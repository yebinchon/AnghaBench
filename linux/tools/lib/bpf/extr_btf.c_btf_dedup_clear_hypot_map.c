
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dedup {int hypot_cnt; size_t* hypot_list; int * hypot_map; } ;


 int BTF_UNPROCESSED_ID ;

__attribute__((used)) static void btf_dedup_clear_hypot_map(struct btf_dedup *d)
{
 int i;

 for (i = 0; i < d->hypot_cnt; i++)
  d->hypot_map[d->hypot_list[i]] = BTF_UNPROCESSED_ID;
 d->hypot_cnt = 0;
}
