
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct world {int * key_refs; struct objagg_obj** objagg_objs; } ;
struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;


 size_t key_id_index (unsigned int) ;
 int objagg_obj_put (struct objagg*,struct objagg_obj*) ;

__attribute__((used)) static void world_obj_put(struct world *world, struct objagg *objagg,
     unsigned int key_id)
{
 struct objagg_obj *objagg_obj;

 if (!world->key_refs[key_id_index(key_id)])
  return;
 objagg_obj = world->objagg_objs[key_id_index(key_id)];
 objagg_obj_put(objagg, objagg_obj);
 world->key_refs[key_id_index(key_id)]--;
}
