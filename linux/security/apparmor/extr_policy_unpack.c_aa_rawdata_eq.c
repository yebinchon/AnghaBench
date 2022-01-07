
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_loaddata {scalar_t__ size; int data; int hash; } ;


 scalar_t__ aa_g_hash_policy ;
 scalar_t__ aa_hash_size () ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

bool aa_rawdata_eq(struct aa_loaddata *l, struct aa_loaddata *r)
{
 if (l->size != r->size)
  return 0;
 if (aa_g_hash_policy && memcmp(l->hash, r->hash, aa_hash_size()) != 0)
  return 0;
 return memcmp(l->data, r->data, r->size) == 0;
}
