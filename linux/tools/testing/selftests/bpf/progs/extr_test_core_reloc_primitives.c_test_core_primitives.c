
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_reloc_primitives {int f; int d; int c; int b; int a; } ;
struct TYPE_2__ {int out; int in; } ;


 scalar_t__ BPF_CORE_READ (int *,int *) ;
 TYPE_1__ data ;

int test_core_primitives(void *ctx)
{
 struct core_reloc_primitives *in = (void *)&data.in;
 struct core_reloc_primitives *out = (void *)&data.out;

 if (BPF_CORE_READ(&out->a, &in->a) ||
     BPF_CORE_READ(&out->b, &in->b) ||
     BPF_CORE_READ(&out->c, &in->c) ||
     BPF_CORE_READ(&out->d, &in->d) ||
     BPF_CORE_READ(&out->f, &in->f))
  return 1;

 return 0;
}
