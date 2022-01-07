
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_reloc_ptr_as_arr {int a; } ;
struct TYPE_2__ {int out; int in; } ;


 scalar_t__ BPF_CORE_READ (int *,int *) ;
 TYPE_1__ data ;

int test_core_ptr_as_arr(void *ctx)
{
 struct core_reloc_ptr_as_arr *in = (void *)&data.in;
 struct core_reloc_ptr_as_arr *out = (void *)&data.out;

 if (BPF_CORE_READ(&out->a, &in[2].a))
  return 1;

 return 0;
}
