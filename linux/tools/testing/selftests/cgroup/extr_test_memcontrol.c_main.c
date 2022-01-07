
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
 scalar_t__ cg_read_strstr (char*,char*,char*) ;
 scalar_t__ cg_write (char*,char*,char*) ;
 int ksft_exit_skip (char*) ;
 int ksft_test_result_fail (char*,int ) ;
 int ksft_test_result_pass (char*,int ) ;
 int ksft_test_result_skip (char*,int ) ;
 int stub1 (char*) ;
 TYPE_1__* tests ;

int main(int argc, char **argv)
{
 char root[PATH_MAX];
 int i, ret = EXIT_SUCCESS;

 if (cg_find_unified_root(root, sizeof(root)))
  ksft_exit_skip("cgroup v2 isn't mounted\n");





 if (cg_read_strstr(root, "cgroup.controllers", "memory"))
  ksft_exit_skip("memory controller isn't available\n");

 if (cg_read_strstr(root, "cgroup.subtree_control", "memory"))
  if (cg_write(root, "cgroup.subtree_control", "+memory"))
   ksft_exit_skip("Failed to set memory controller\n");

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
