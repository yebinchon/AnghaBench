
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dedup {struct btf_dedup* hypot_list; struct btf_dedup* hypot_map; struct btf_dedup* map; int * dedup_table; } ;


 int free (struct btf_dedup*) ;
 int hashmap__free (int *) ;

__attribute__((used)) static void btf_dedup_free(struct btf_dedup *d)
{
 hashmap__free(d->dedup_table);
 d->dedup_table = ((void*)0);

 free(d->map);
 d->map = ((void*)0);

 free(d->hypot_map);
 d->hypot_map = ((void*)0);

 free(d->hypot_list);
 d->hypot_list = ((void*)0);

 free(d);
}
