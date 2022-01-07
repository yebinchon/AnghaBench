
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int root ;
struct TYPE_3__ {int (* fn ) (char*) ;int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;


 int PATH_MAX ;
 scalar_t__ cg_find_unified_root (char*,int) ;
 int ksft_exit_skip (char*) ;
 int ksft_test_result_fail (char*,int ) ;
 int ksft_test_result_pass (char*,int ) ;
 int ksft_test_result_skip (char*,int ) ;
 int stub1 (char*) ;
 TYPE_1__* tests ;

int main(int argc, char *argv[])
{
 char root[PATH_MAX];
 int i, ret = EXIT_SUCCESS;

 if (cg_find_unified_root(root, sizeof(root)))
  ksft_exit_skip("cgroup v2 isn't mounted\n");
 for (i = 0; i < ARRAY_SIZE(tests); i++) {
  switch (tests[i].fn(root)) {
  case 129:
   ksft_test_result_pass("%s\n", tests[i].name);
   break;
  case 128:
   ksft_test_result_skip("%s\n", tests[i].name);
   break;
  default:
   ret = EXIT_FAILURE;
   ksft_test_result_fail("%s\n", tests[i].name);
   break;
  }
 }

 return ret;
}
