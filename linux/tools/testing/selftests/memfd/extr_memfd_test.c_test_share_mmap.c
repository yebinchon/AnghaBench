
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SEAL_SHRINK ;
 int F_SEAL_WRITE ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int close (int) ;
 char* memfd_str ;
 int mfd_assert_add_seals (int,int) ;
 int mfd_assert_has_seals (int,int) ;
 void* mfd_assert_mmap_private (int) ;
 void* mfd_assert_mmap_shared (int) ;
 int mfd_assert_new (char*,int ,int) ;
 int mfd_def_size ;
 int mfd_fail_add_seals (int,int) ;
 int munmap (void*,int ) ;
 int printf (char*,char*,char*,char*) ;

__attribute__((used)) static void test_share_mmap(char *banner, char *b_suffix)
{
 int fd;
 void *p;

 printf("%s %s %s\n", memfd_str, banner, b_suffix);

 fd = mfd_assert_new("kern_memfd_share_mmap",
       mfd_def_size,
       MFD_CLOEXEC | MFD_ALLOW_SEALING);
 mfd_assert_has_seals(fd, 0);


 p = mfd_assert_mmap_shared(fd);
 mfd_fail_add_seals(fd, F_SEAL_WRITE);
 mfd_assert_has_seals(fd, 0);
 mfd_assert_add_seals(fd, F_SEAL_SHRINK);
 mfd_assert_has_seals(fd, F_SEAL_SHRINK);
 munmap(p, mfd_def_size);


 p = mfd_assert_mmap_private(fd);
 mfd_assert_add_seals(fd, F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_WRITE | F_SEAL_SHRINK);
 munmap(p, mfd_def_size);

 close(fd);
}
