
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_reloc_flavors___weird {int a; } ;
struct core_reloc_flavors___reversed {int b; } ;
struct core_reloc_flavors {int c; int b; int a; } ;
struct TYPE_2__ {int out; int in; } ;


 scalar_t__ BPF_CORE_READ (int *,int *) ;
 TYPE_1__ data ;

int test_core_flavors(void *ctx)
{
 struct core_reloc_flavors *in_orig = (void *)&data.in;
 struct core_reloc_flavors___reversed *in_rev = (void *)&data.in;
 struct core_reloc_flavors___weird *in_weird = (void *)&data.in;
 struct core_reloc_flavors *out = (void *)&data.out;


 if (BPF_CORE_READ(&out->a, &in_weird->a))
  return 1;

 if (BPF_CORE_READ(&out->b, &in_rev->b))
  return 1;

 if (BPF_CORE_READ(&out->c, &in_orig->c))
  return 1;

 return 0;
}
