
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct core_reloc_arrays_output {int d00d; int c1c; int b123; int a2; } ;
struct core_reloc_arrays {TYPE_2__** d; TYPE_1__* c; int *** b; int * a; } ;
struct TYPE_6__ {int out; int in; } ;
struct TYPE_5__ {int d; } ;
struct TYPE_4__ {int c; } ;


 scalar_t__ BPF_CORE_READ (int *,int *) ;
 TYPE_3__ data ;

int test_core_arrays(void *ctx)
{
 struct core_reloc_arrays *in = (void *)&data.in;
 struct core_reloc_arrays_output *out = (void *)&data.out;


 if (BPF_CORE_READ(&out->a2, &in->a[2]))
  return 1;

 if (BPF_CORE_READ(&out->b123, &in->b[1][2][3]))
  return 1;

 if (BPF_CORE_READ(&out->c1c, &in->c[1].c))
  return 1;

 if (BPF_CORE_READ(&out->d00d, &in->d[0][0].d))
  return 1;

 return 0;
}
