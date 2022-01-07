
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SEAL_SEAL ;
 int F_SEAL_SHRINK ;
 int F_SEAL_WRITE ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int O_RDONLY ;
 int O_RDWR ;
 int close (int) ;
 char* memfd_str ;
 int mfd_assert_add_seals (int,int) ;
 int mfd_assert_has_seals (int,int) ;
 int mfd_assert_new (char*,int ,int) ;
 int mfd_assert_open (int,int ,int ) ;
 int mfd_def_size ;
 int mfd_fail_add_seals (int,int) ;
 int printf (char*,char*,char*,char*) ;

__attribute__((used)) static void test_share_open(char *banner, char *b_suffix)
{
 int fd, fd2;

 printf("%s %s %s\n", memfd_str, banner, b_suffix);

 fd = mfd_assert_new("kern_memfd_share_open",
       mfd_def_size,
       MFD_CLOEXEC | MFD_ALLOW_SEALING);
 mfd_assert_has_seals(fd, 0);

 fd2 = mfd_assert_open(fd, O_RDWR, 0);
 mfd_assert_add_seals(fd, F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_WRITE);
 mfd_assert_has_seals(fd2, F_SEAL_WRITE);

 mfd_assert_add_seals(fd2, F_SEAL_SHRINK);
 mfd_assert_has_seals(fd, F_SEAL_WRITE | F_SEAL_SHRINK);
 mfd_assert_has_seals(fd2, F_SEAL_WRITE | F_SEAL_SHRINK);

 close(fd);
 fd = mfd_assert_open(fd2, O_RDONLY, 0);

 mfd_fail_add_seals(fd, F_SEAL_SEAL);
 mfd_assert_has_seals(fd, F_SEAL_WRITE | F_SEAL_SHRINK);
 mfd_assert_has_seals(fd2, F_SEAL_WRITE | F_SEAL_SHRINK);

 close(fd2);
 fd2 = mfd_assert_open(fd, O_RDWR, 0);

 mfd_assert_add_seals(fd2, F_SEAL_SEAL);
 mfd_assert_has_seals(fd, F_SEAL_WRITE | F_SEAL_SHRINK | F_SEAL_SEAL);
 mfd_assert_has_seals(fd2, F_SEAL_WRITE | F_SEAL_SHRINK | F_SEAL_SEAL);

 close(fd2);
 close(fd);
}
