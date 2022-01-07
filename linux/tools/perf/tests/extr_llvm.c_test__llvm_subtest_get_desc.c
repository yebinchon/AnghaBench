
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* desc; } ;


 int __LLVM_TESTCASE_MAX ;
 TYPE_1__* bpf_source_table ;

const char *test__llvm_subtest_get_desc(int subtest)
{
 if ((subtest < 0) || (subtest >= __LLVM_TESTCASE_MAX))
  return ((void*)0);

 return bpf_source_table[subtest].desc;
}
