
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int F_SEAL_SEAL ;
 int F_SEAL_WRITE ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int close (int) ;
 int join_idle_thread (int ) ;
 char* memfd_str ;
 int mfd_assert_add_seals (int,int ) ;
 int mfd_assert_has_seals (int,int ) ;
 int mfd_assert_new (char*,int ,int) ;
 int mfd_def_size ;
 int mfd_fail_add_seals (int,int ) ;
 int printf (char*,char*,char*,char*) ;
 int spawn_idle_thread (int ) ;

__attribute__((used)) static void test_share_fork(char *banner, char *b_suffix)
{
 int fd;
 pid_t pid;

 printf("%s %s %s\n", memfd_str, banner, b_suffix);

 fd = mfd_assert_new("kern_memfd_share_fork",
       mfd_def_size,
       MFD_CLOEXEC | MFD_ALLOW_SEALING);
 mfd_assert_has_seals(fd, 0);

 pid = spawn_idle_thread(0);
 mfd_assert_add_seals(fd, F_SEAL_SEAL);
 mfd_assert_has_seals(fd, F_SEAL_SEAL);

 mfd_fail_add_seals(fd, F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_SEAL);

 join_idle_thread(pid);

 mfd_fail_add_seals(fd, F_SEAL_WRITE);
 mfd_assert_has_seals(fd, F_SEAL_SEAL);

 close(fd);
}
