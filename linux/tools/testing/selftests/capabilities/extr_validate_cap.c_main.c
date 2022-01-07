
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_SECURE ;
 int CAPNG_EFFECTIVE ;
 int CAPNG_INHERITABLE ;
 int CAPNG_PERMITTED ;
 int CAP_NET_BIND_SERVICE ;
 int PR_CAP_AMBIENT ;
 int PR_CAP_AMBIENT_IS_SET ;
 scalar_t__ bool_arg (char**,int) ;
 int capng_get_caps_process () ;
 scalar_t__ capng_have_capability (int ,int ) ;
 scalar_t__ getauxval (int ) ;
 int ksft_exit_fail_msg (char*) ;
 int ksft_print_msg (char*,char const*) ;
 scalar_t__ prctl (int ,int ,int ,int ,int ,int ) ;

int main(int argc, char **argv)
{
 const char *atsec = "";






 if (argc != 5)
  ksft_exit_fail_msg("wrong argc\n");
 capng_get_caps_process();

 if (capng_have_capability(CAPNG_EFFECTIVE, CAP_NET_BIND_SERVICE) != bool_arg(argv, 1)) {
  ksft_print_msg("Wrong effective state%s\n", atsec);
  return 1;
 }

 if (capng_have_capability(CAPNG_PERMITTED, CAP_NET_BIND_SERVICE) != bool_arg(argv, 2)) {
  ksft_print_msg("Wrong permitted state%s\n", atsec);
  return 1;
 }

 if (capng_have_capability(CAPNG_INHERITABLE, CAP_NET_BIND_SERVICE) != bool_arg(argv, 3)) {
  ksft_print_msg("Wrong inheritable state%s\n", atsec);
  return 1;
 }

 if (prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_NET_BIND_SERVICE, 0, 0, 0) != bool_arg(argv, 4)) {
  ksft_print_msg("Wrong ambient state%s\n", atsec);
  return 1;
 }

 ksft_print_msg("%s: Capabilities after execve were correct\n",
   "validate_cap:");
 return 0;
}
