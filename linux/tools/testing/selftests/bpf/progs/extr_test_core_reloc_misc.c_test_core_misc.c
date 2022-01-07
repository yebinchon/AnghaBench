
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct core_reloc_misc_output {int c; int b; int a; } ;
struct core_reloc_misc_extensible {int dummy; } ;
struct core_reloc_misc___b {struct core_reloc_misc_extensible b1; } ;
struct core_reloc_misc___a {struct core_reloc_misc_extensible a1; } ;
struct TYPE_2__ {int out; int in; } ;


 scalar_t__ BPF_CORE_READ (int *,struct core_reloc_misc_extensible*) ;
 TYPE_1__ data ;

int test_core_misc(void *ctx)
{
 struct core_reloc_misc___a *in_a = (void *)&data.in;
 struct core_reloc_misc___b *in_b = (void *)&data.in;
 struct core_reloc_misc_extensible *in_ext = (void *)&data.in;
 struct core_reloc_misc_output *out = (void *)&data.out;


 if (BPF_CORE_READ(&out->a, &in_a->a1) ||
     BPF_CORE_READ(&out->b, &in_b->b1))
  return 1;





 if (BPF_CORE_READ(&out->c, &in_ext[2]))
  return 1;

 return 0;
}
