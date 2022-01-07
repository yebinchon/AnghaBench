
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int abort () ;
 int fallocate (int,int,int ,int ) ;
 int hugetlbfs_test ;
 int mfd_def_size ;
 void* mmap (int *,int ,int,int ,int,int ) ;
 int mprotect (void*,int ,int) ;
 int munmap (void*,int ) ;
 int printf (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void mfd_assert_write(int fd)
{
 ssize_t l;
 void *p;
 int r;





 if (!hugetlbfs_test) {

  l = write(fd, "\0\0\0\0", 4);
  if (l != 4) {
   printf("write() failed: %m\n");
   abort();
  }
 }


 p = mmap(((void*)0),
   mfd_def_size,
   PROT_READ | PROT_WRITE,
   MAP_SHARED,
   fd,
   0);
 if (p == MAP_FAILED) {
  printf("mmap() failed: %m\n");
  abort();
 }
 *(char *)p = 0;
 munmap(p, mfd_def_size);


 p = mmap(((void*)0),
   mfd_def_size,
   PROT_WRITE,
   MAP_SHARED,
   fd,
   0);
 if (p == MAP_FAILED) {
  printf("mmap() failed: %m\n");
  abort();
 }
 *(char *)p = 0;
 munmap(p, mfd_def_size);



 p = mmap(((void*)0),
   mfd_def_size,
   PROT_READ,
   MAP_SHARED,
   fd,
   0);
 if (p == MAP_FAILED) {
  printf("mmap() failed: %m\n");
  abort();
 }

 r = mprotect(p, mfd_def_size, PROT_READ | PROT_WRITE);
 if (r < 0) {
  printf("mprotect() failed: %m\n");
  abort();
 }

 *(char *)p = 0;
 munmap(p, mfd_def_size);


 r = fallocate(fd,
        FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
        0,
        mfd_def_size);
 if (r < 0) {
  printf("fallocate(PUNCH_HOLE) failed: %m\n");
  abort();
 }
}
