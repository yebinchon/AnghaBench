
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_dedup {TYPE_1__* btf; } ;
struct TYPE_2__ {int nr_types; } ;


 int btf_dedup_remap_type (struct btf_dedup*,int) ;

__attribute__((used)) static int btf_dedup_remap_types(struct btf_dedup *d)
{
 int i, r;

 for (i = 1; i <= d->btf->nr_types; i++) {
  r = btf_dedup_remap_type(d, i);
  if (r < 0)
   return r;
 }
 return 0;
}
