
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct objagg {int ht_params; int obj_ht; } ;


 struct objagg_obj* rhashtable_lookup_fast (int *,void*,int ) ;

__attribute__((used)) static struct objagg_obj *objagg_obj_lookup(struct objagg *objagg, void *obj)
{
 return rhashtable_lookup_fast(&objagg->obj_ht, obj, objagg->ht_params);
}
