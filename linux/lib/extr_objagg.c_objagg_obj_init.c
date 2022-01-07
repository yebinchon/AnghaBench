
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;


 int objagg_obj_init_with_hints (struct objagg*,struct objagg_obj*,int*) ;
 int objagg_obj_parent_lookup_assign (struct objagg*,struct objagg_obj*) ;
 int objagg_obj_root_create (struct objagg*,struct objagg_obj*,int *) ;

__attribute__((used)) static int objagg_obj_init(struct objagg *objagg,
      struct objagg_obj *objagg_obj)
{
 bool hint_found;
 int err;




 err = objagg_obj_init_with_hints(objagg, objagg_obj, &hint_found);
 if (err)
  return err;

 if (hint_found)
  return 0;


 err = objagg_obj_parent_lookup_assign(objagg, objagg_obj);
 if (!err)
  return 0;

 return objagg_obj_root_create(objagg, objagg_obj, ((void*)0));
}
