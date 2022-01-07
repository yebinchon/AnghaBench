
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int CAPNG_ADD ;
 int CAPNG_DROP ;
 int CAPNG_EFFECTIVE ;
 int CAPNG_INHERITABLE ;
 int CAPNG_PERMITTED ;
 int CAPNG_SELECT_CAPS ;
 int CAP_NET_BIND_SERVICE ;
 int CAP_NET_RAW ;
 scalar_t__ EINVAL ;
 scalar_t__ EPERM ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int PR_CAP_AMBIENT ;
 int PR_CAP_AMBIENT_CLEAR_ALL ;
 int PR_CAP_AMBIENT_IS_SET ;
 int PR_CAP_AMBIENT_RAISE ;
 int S_ISGID ;
 int S_ISUID ;
 scalar_t__ capng_apply (int ) ;
 int capng_get_caps_process () ;
 int capng_update (int ,int ,int ) ;
 int chdir_to_tmpfs () ;
 scalar_t__ chmod (char*,int) ;
 scalar_t__ chown (char*,int,int) ;
 int copy_fromat_to (int,char*,char*) ;
 int create_and_enter_ns (int) ;
 scalar_t__ errno ;
 int exec_other_validate_cap (char*,int,int,int,int) ;
 int exec_validate_cap (int,int,int,int) ;
 scalar_t__ fork_wait () ;
 int getegid () ;
 int ksft_exit_fail_msg (char*,char const*,...) ;
 int ksft_print_cnts () ;
 int ksft_print_msg (char*,...) ;
 int ksft_test_result_fail (char*) ;
 int ksft_test_result_pass (char*) ;
 int ksft_test_result_skip (char*) ;
 scalar_t__ nerrs ;
 int open (char const*,int) ;
 int prctl (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ setresgid (int,int,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int do_tests(int uid, const char *our_path)
{
 bool have_outer_privilege = create_and_enter_ns(uid);

 int ourpath_fd = open(our_path, O_RDONLY | O_DIRECTORY);
 if (ourpath_fd == -1)
  ksft_exit_fail_msg("open '%s' - %s\n",
     our_path, strerror(errno));

 chdir_to_tmpfs();

 copy_fromat_to(ourpath_fd, "validate_cap", "validate_cap");

 if (have_outer_privilege) {
  uid_t gid = getegid();

  copy_fromat_to(ourpath_fd, "validate_cap",
          "validate_cap_suidroot");
  if (chown("validate_cap_suidroot", 0, -1) != 0)
   ksft_exit_fail_msg("chown - %s\n", strerror(errno));
  if (chmod("validate_cap_suidroot", S_ISUID | 0700) != 0)
   ksft_exit_fail_msg("chmod - %s\n", strerror(errno));

  copy_fromat_to(ourpath_fd, "validate_cap",
          "validate_cap_suidnonroot");
  if (chown("validate_cap_suidnonroot", uid + 1, -1) != 0)
   ksft_exit_fail_msg("chown - %s\n", strerror(errno));
  if (chmod("validate_cap_suidnonroot", S_ISUID | 0700) != 0)
   ksft_exit_fail_msg("chmod - %s\n", strerror(errno));

  copy_fromat_to(ourpath_fd, "validate_cap",
          "validate_cap_sgidroot");
  if (chown("validate_cap_sgidroot", -1, 0) != 0)
   ksft_exit_fail_msg("chown - %s\n", strerror(errno));
  if (chmod("validate_cap_sgidroot", S_ISGID | 0710) != 0)
   ksft_exit_fail_msg("chmod - %s\n", strerror(errno));

  copy_fromat_to(ourpath_fd, "validate_cap",
          "validate_cap_sgidnonroot");
  if (chown("validate_cap_sgidnonroot", -1, gid + 1) != 0)
   ksft_exit_fail_msg("chown - %s\n", strerror(errno));
  if (chmod("validate_cap_sgidnonroot", S_ISGID | 0710) != 0)
   ksft_exit_fail_msg("chmod - %s\n", strerror(errno));
 }

 capng_get_caps_process();


 capng_update(CAPNG_DROP, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
 if (capng_apply(CAPNG_SELECT_CAPS) != 0)
  ksft_exit_fail_msg("capng_apply - %s\n", strerror(errno));

 if (uid == 0) {
  ksft_print_msg("[RUN]\tRoot => ep\n");
  if (fork_wait())
   exec_validate_cap(1, 1, 0, 0);
 } else {
  ksft_print_msg("[RUN]\tNon-root => no caps\n");
  if (fork_wait())
   exec_validate_cap(0, 0, 0, 0);
 }

 ksft_print_msg("Check cap_ambient manipulation rules\n");


 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != -1 || errno != EPERM) {
  if (errno == EINVAL)
   ksft_test_result_fail(
    "PR_CAP_AMBIENT_RAISE isn't supported\n");
  else
   ksft_test_result_fail(
    "PR_CAP_AMBIENT_RAISE should have failed eith EPERM on a non-inheritable cap\n");
  return 1;
 }
 ksft_test_result_pass(
  "PR_CAP_AMBIENT_RAISE failed on non-inheritable cap\n");

 capng_update(CAPNG_ADD, CAPNG_INHERITABLE, CAP_NET_RAW);
 capng_update(CAPNG_DROP, CAPNG_PERMITTED, CAP_NET_RAW);
 capng_update(CAPNG_DROP, CAPNG_EFFECTIVE, CAP_NET_RAW);
 if (capng_apply(CAPNG_SELECT_CAPS) != 0)
  ksft_exit_fail_msg("capng_apply - %s\n", strerror(errno));
 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_RAW, 0, 0, 0) != -1 || errno != EPERM) {
  ksft_test_result_fail(
   "PR_CAP_AMBIENT_RAISE should have failed on a non-permitted cap\n");
  return 1;
 }
 ksft_test_result_pass(
  "PR_CAP_AMBIENT_RAISE failed on non-permitted cap\n");

 capng_update(CAPNG_ADD, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
 if (capng_apply(CAPNG_SELECT_CAPS) != 0)
  ksft_exit_fail_msg("capng_apply - %s\n", strerror(errno));
 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0) {
  ksft_test_result_fail(
   "PR_CAP_AMBIENT_RAISE should have succeeded\n");
  return 1;
 }
 ksft_test_result_pass("PR_CAP_AMBIENT_RAISE worked\n");

 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != 1) {
  ksft_test_result_fail("PR_CAP_AMBIENT_IS_SET is broken\n");
  return 1;
 }

 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_CLEAR_ALL, 0, 0, 0, 0) != 0)
  ksft_exit_fail_msg("PR_CAP_AMBIENT_CLEAR_ALL - %s\n",
     strerror(errno));

 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0) {
  ksft_test_result_fail(
   "PR_CAP_AMBIENT_CLEAR_ALL didn't work\n");
  return 1;
 }

 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0)
  ksft_exit_fail_msg("PR_CAP_AMBIENT_RAISE - %s\n",
     strerror(errno));

 capng_update(CAPNG_DROP, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
 if (capng_apply(CAPNG_SELECT_CAPS) != 0)
  ksft_exit_fail_msg("capng_apply - %s\n", strerror(errno));

 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0) {
  ksft_test_result_fail("Dropping I should have dropped A\n");
  return 1;
 }

 ksft_test_result_pass("Basic manipulation appears to work\n");

 capng_update(CAPNG_ADD, CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE);
 if (capng_apply(CAPNG_SELECT_CAPS) != 0)
  ksft_exit_fail_msg("capng_apply - %s\n", strerror(errno));
 if (uid == 0) {
  ksft_print_msg("[RUN]\tRoot +i => eip\n");
  if (fork_wait())
   exec_validate_cap(1, 1, 1, 0);
 } else {
  ksft_print_msg("[RUN]\tNon-root +i => i\n");
  if (fork_wait())
   exec_validate_cap(0, 0, 1, 0);
 }

 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_RAISE, CAP_NET_BIND_SERVICE, 0, 0, 0) != 0)
  ksft_exit_fail_msg("PR_CAP_AMBIENT_RAISE - %s\n",
     strerror(errno));

 ksft_print_msg("[RUN]\tUID %d +ia => eipa\n", uid);
 if (fork_wait())
  exec_validate_cap(1, 1, 1, 1);



 if (!have_outer_privilege) {
  ksft_test_result_skip("SUID/SGID tests (needs privilege)\n");
  goto done;
 }

 if (uid == 0) {
  ksft_print_msg("[RUN]\tRoot +ia, suidroot => eipa\n");
  if (fork_wait())
   exec_other_validate_cap("./validate_cap_suidroot",
      1, 1, 1, 1);

  ksft_print_msg("[RUN]\tRoot +ia, suidnonroot => ip\n");
  if (fork_wait())
   exec_other_validate_cap("./validate_cap_suidnonroot",
      0, 1, 1, 0);

  ksft_print_msg("[RUN]\tRoot +ia, sgidroot => eipa\n");
  if (fork_wait())
   exec_other_validate_cap("./validate_cap_sgidroot",
      1, 1, 1, 1);

  if (fork_wait()) {
   ksft_print_msg(
    "[RUN]\tRoot, gid != 0, +ia, sgidroot => eip\n");
   if (setresgid(1, 1, 1) != 0)
    ksft_exit_fail_msg("setresgid - %s\n",
       strerror(errno));
   exec_other_validate_cap("./validate_cap_sgidroot",
      1, 1, 1, 0);
  }

  ksft_print_msg("[RUN]\tRoot +ia, sgidnonroot => eip\n");
  if (fork_wait())
   exec_other_validate_cap("./validate_cap_sgidnonroot",
      1, 1, 1, 0);
 } else {
  ksft_print_msg("[RUN]\tNon-root +ia, sgidnonroot => i\n");
  if (fork_wait())
   exec_other_validate_cap("./validate_cap_sgidnonroot",
     0, 0, 1, 0);

  if (fork_wait()) {
   ksft_print_msg("[RUN]\tNon-root +ia, sgidroot => i\n");
   if (setresgid(1, 1, 1) != 0)
    ksft_exit_fail_msg("setresgid - %s\n",
       strerror(errno));
   exec_other_validate_cap("./validate_cap_sgidroot",
      0, 0, 1, 0);
  }
 }

done:
 ksft_print_cnts();
 return nerrs ? 1 : 0;
}
