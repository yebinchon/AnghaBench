
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SEAL_GROW ;
 int F_SEAL_SEAL ;
 int F_SEAL_SHRINK ;
 int F_SEAL_WRITE ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int close (int) ;
 char* memfd_str ;
 int mfd_assert_add_seals (int,int) ;
 int mfd_assert_has_seals (int,int) ;
 int mfd_assert_new (char*,int ,int) ;
 int mfd_def_size ;
 int mfd_fail_add_seals (int,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static void test_basic(void)
{
 int fd;

 printf("%s BASIC\n", memfd_str);

 fd = mfd_assert_new("kern_memfd_basic",
       mfd_def_size,
       MFD_CLOEXEC | MFD_ALLOW_SEALING);


 mfd_assert_has_seals(fd, 0);
 mfd_assert_add_seals(fd, F_SEAL_SHRINK |
     F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_SHRINK |
     F_SEAL_WRITE);


 mfd_assert_add_seals(fd, F_SEAL_SHRINK |
     F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_SHRINK |
     F_SEAL_WRITE);


 mfd_assert_add_seals(fd, F_SEAL_GROW | F_SEAL_SEAL);
 mfd_assert_has_seals(fd, F_SEAL_SHRINK |
     F_SEAL_GROW |
     F_SEAL_WRITE |
     F_SEAL_SEAL);


 mfd_fail_add_seals(fd, F_SEAL_GROW);
 mfd_fail_add_seals(fd, 0);

 close(fd);


 fd = mfd_assert_new("kern_memfd_basic",
       mfd_def_size,
       MFD_CLOEXEC);
 mfd_assert_has_seals(fd, F_SEAL_SEAL);
 mfd_fail_add_seals(fd, F_SEAL_SHRINK |
          F_SEAL_GROW |
          F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_SEAL);
 close(fd);
}
