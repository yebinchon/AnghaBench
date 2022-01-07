
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_dedup {int * dedup_table; TYPE_1__* btf; } ;
struct TYPE_2__ {int nr_types; } ;


 int btf_dedup_ref_type (struct btf_dedup*,int) ;
 int hashmap__free (int *) ;

__attribute__((used)) static int btf_dedup_ref_types(struct btf_dedup *d)
{
 int i, err;

 for (i = 1; i <= d->btf->nr_types; i++) {
  err = btf_dedup_ref_type(d, i);
  if (err < 0)
   return err;
 }

 hashmap__free(d->dedup_table);
 d->dedup_table = ((void*)0);
 return 0;
}
