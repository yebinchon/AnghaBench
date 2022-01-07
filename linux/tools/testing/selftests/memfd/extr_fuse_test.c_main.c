
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int F_SEAL_WRITE ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int abort () ;
 char* calloc (int,unsigned long) ;
 int close (int) ;
 unsigned long default_huge_page_size () ;
 int free (char*) ;
 int global_mfd ;
 void* global_p ;
 int hugetlbfs_test ;
 int join_sealing_thread (int ) ;
 scalar_t__ memcmp (void*,char*,unsigned long) ;
 int mfd_assert_get_seals (int) ;
 int mfd_assert_has_seals (int,int) ;
 void* mfd_assert_mmap_private (int) ;
 void* mfd_assert_mmap_shared (int) ;
 int mfd_assert_new (char*,unsigned long,int) ;
 unsigned long mfd_def_size ;
 int open (char*,int) ;
 int printf (char*,...) ;
 int read (int,void*,unsigned long) ;
 int spawn_sealing_thread () ;
 int strcmp (char*,char*) ;

int main(int argc, char **argv)
{
 char *zero;
 int fd, mfd, r;
 void *p;
 int was_sealed;
 pid_t pid;

 if (argc < 2) {
  printf("error: please pass path to file in fuse_mnt mount-point\n");
  abort();
 }

 if (argc >= 3) {
  if (!strcmp(argv[2], "hugetlbfs")) {
   unsigned long hpage_size = default_huge_page_size();

   if (!hpage_size) {
    printf("Unable to determine huge page size\n");
    abort();
   }

   hugetlbfs_test = 1;
   mfd_def_size = hpage_size * 2;
  } else {
   printf("Unknown option: %s\n", argv[2]);
   abort();
  }
 }

 zero = calloc(sizeof(*zero), mfd_def_size);


 printf("opening: %s\n", argv[1]);
 fd = open(argv[1], O_RDONLY | O_CLOEXEC);
 if (fd < 0) {
  printf("cannot open(\"%s\"): %m\n", argv[1]);
  abort();
 }


 mfd = mfd_assert_new("kern_memfd_fuse",
        mfd_def_size,
        MFD_CLOEXEC | MFD_ALLOW_SEALING);


 p = mfd_assert_mmap_shared(mfd);



 global_mfd = mfd;
 global_p = p;
 pid = spawn_sealing_thread();
 r = read(fd, p, mfd_def_size);
 if (r < 0) {
  printf("read() failed: %m\n");
  abort();
 } else if (!r) {
  printf("unexpected EOF on read()\n");
  abort();
 }

 was_sealed = mfd_assert_get_seals(mfd) & F_SEAL_WRITE;



 join_sealing_thread(pid);
 mfd_assert_has_seals(mfd, F_SEAL_WRITE);
 p = mfd_assert_mmap_private(mfd);
 if (was_sealed && memcmp(p, zero, mfd_def_size)) {
  printf("memfd sealed during read() but data not discarded\n");
  abort();
 } else if (!was_sealed && !memcmp(p, zero, mfd_def_size)) {
  printf("memfd sealed after read() but data discarded\n");
  abort();
 }

 close(mfd);
 close(fd);

 printf("fuse: DONE\n");
 free(zero);

 return 0;
}
