
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int CAPNG_ADD ;
 int CAPNG_EFFECTIVE ;
 int CAPNG_PERMITTED ;
 int CAPNG_SELECT_CAPS ;
 int CAP_LAST_CAP ;
 int CLONE_NEWNS ;
 int CLONE_NEWUSER ;
 int MS_PRIVATE ;
 int MS_REC ;
 int PR_SET_KEEPCAPS ;
 scalar_t__ capng_apply (int ) ;
 int capng_get_caps_process () ;
 scalar_t__ capng_have_capability (int ,int) ;
 int capng_update (int ,int ,int) ;
 int errno ;
 int getgid () ;
 int getuid () ;
 int ksft_exit_fail_msg (char*,int ) ;
 int ksft_exit_skip (char*) ;
 int ksft_print_msg (char*) ;
 int maybe_write_file (char*,char*) ;
 scalar_t__ mount (char*,char*,int *,int,int *) ;
 scalar_t__ prctl (int ,int,int ,int ,int ) ;
 scalar_t__ setresuid (int ,int ,int) ;
 int strerror (int ) ;
 scalar_t__ unshare (int) ;
 int write_file (char*,char*,int ,...) ;

__attribute__((used)) static bool create_and_enter_ns(uid_t inner_uid)
{
 uid_t outer_uid;
 gid_t outer_gid;
 int i;
 bool have_outer_privilege;

 outer_uid = getuid();
 outer_gid = getgid();





 if (unshare(CLONE_NEWNS) == 0) {
  ksft_print_msg("[NOTE]\tUsing global UIDs for tests\n");
  if (prctl(PR_SET_KEEPCAPS, 1, 0, 0, 0) != 0)
   ksft_exit_fail_msg("PR_SET_KEEPCAPS - %s\n",
      strerror(errno));
  if (setresuid(inner_uid, inner_uid, -1) != 0)
   ksft_exit_fail_msg("setresuid - %s\n", strerror(errno));


  capng_get_caps_process();
  for (i = 0; i < CAP_LAST_CAP; i++)
   if (capng_have_capability(CAPNG_PERMITTED, i))
    capng_update(CAPNG_ADD, CAPNG_EFFECTIVE, i);
  if (capng_apply(CAPNG_SELECT_CAPS) != 0)
   ksft_exit_fail_msg(
     "capng_apply - %s\n", strerror(errno));

  have_outer_privilege = 1;
 } else if (unshare(CLONE_NEWUSER | CLONE_NEWNS) == 0) {
  ksft_print_msg("[NOTE]\tUsing a user namespace for tests\n");
  maybe_write_file("/proc/self/setgroups", "deny");
  write_file("/proc/self/uid_map", "%d %d 1", inner_uid, outer_uid);
  write_file("/proc/self/gid_map", "0 %d 1", outer_gid);

  have_outer_privilege = 0;
 } else {
  ksft_exit_skip("must be root or be able to create a userns\n");
 }

 if (mount("none", "/", ((void*)0), MS_REC | MS_PRIVATE, ((void*)0)) != 0)
  ksft_exit_fail_msg("remount everything private - %s\n",
     strerror(errno));

 return have_outer_privilege;
}
