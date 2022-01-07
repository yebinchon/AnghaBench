
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* name; } ;
struct test_env {int verifier_stats; int very_verbose; int verbose; TYPE_1__ test_selector; TYPE_1__ subtest_selector; } ;
struct argp_state {struct test_env* input; } ;
typedef int error_t ;


 int ARGP_ERR_UNKNOWN ;






 int EINVAL ;
 int ENOMEM ;
 int argp_usage (struct argp_state*) ;
 int fprintf (int ,char*,...) ;
 int parse_num_list (char*,TYPE_1__*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 void* strdup (char*) ;

__attribute__((used)) static error_t parse_arg(int key, char *arg, struct argp_state *state)
{
 struct test_env *env = state->input;

 switch (key) {
 case 130: {
  char *subtest_str = strchr(arg, '/');

  if (subtest_str) {
   *subtest_str = '\0';
   if (parse_num_list(subtest_str + 1,
        &env->subtest_selector)) {
    fprintf(stderr,
     "Failed to parse subtest numbers.\n");
    return -EINVAL;
   }
  }
  if (parse_num_list(arg, &env->test_selector)) {
   fprintf(stderr, "Failed to parse test numbers.\n");
   return -EINVAL;
  }
  break;
 }
 case 131: {
  char *subtest_str = strchr(arg, '/');

  if (subtest_str) {
   *subtest_str = '\0';
   env->subtest_selector.name = strdup(subtest_str + 1);
   if (!env->subtest_selector.name)
    return -ENOMEM;
  }
  env->test_selector.name = strdup(arg);
  if (!env->test_selector.name)
   return -ENOMEM;
  break;
 }
 case 128:
  env->verifier_stats = 1;
  break;
 case 129:
  if (arg) {
   if (strcmp(arg, "v") == 0) {
    env->very_verbose = 1;
   } else {
    fprintf(stderr,
     "Unrecognized verbosity setting ('%s'), only -v and -vv are supported\n",
     arg);
    return -EINVAL;
   }
  }
  env->verbose = 1;
  break;
 case 133:
  argp_usage(state);
  break;
 case 132:
  break;
 default:
  return ARGP_ERR_UNKNOWN;
 }
 return 0;
}
