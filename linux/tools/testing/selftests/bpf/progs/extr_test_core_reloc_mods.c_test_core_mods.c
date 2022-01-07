
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct core_reloc_mods_output {int h; int g; int f; int e; int d; int c; int b; int a; } ;
struct TYPE_5__ {int y; } ;
struct TYPE_4__ {int x; } ;
struct core_reloc_mods {TYPE_2__ h; TYPE_1__ g; int * f; int * e; int d; int c; int b; int a; } ;
struct TYPE_6__ {int out; int in; } ;


 scalar_t__ BPF_CORE_READ (int *,int *) ;
 TYPE_3__ data ;

int test_core_mods(void *ctx)
{
 struct core_reloc_mods *in = (void *)&data.in;
 struct core_reloc_mods_output *out = (void *)&data.out;

 if (BPF_CORE_READ(&out->a, &in->a) ||
     BPF_CORE_READ(&out->b, &in->b) ||
     BPF_CORE_READ(&out->c, &in->c) ||
     BPF_CORE_READ(&out->d, &in->d) ||
     BPF_CORE_READ(&out->e, &in->e[2]) ||
     BPF_CORE_READ(&out->f, &in->f[1]) ||
     BPF_CORE_READ(&out->g, &in->g.x) ||
     BPF_CORE_READ(&out->h, &in->h.y))
  return 1;

 return 0;
}
