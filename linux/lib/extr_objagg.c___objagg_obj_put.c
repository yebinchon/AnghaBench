
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int dummy; } ;
struct objagg {int dummy; } ;


 int objagg_obj_destroy (struct objagg*,struct objagg_obj*) ;
 int objagg_obj_ref_dec (struct objagg_obj*) ;

__attribute__((used)) static void __objagg_obj_put(struct objagg *objagg,
        struct objagg_obj *objagg_obj)
{
 if (!objagg_obj_ref_dec(objagg_obj))
  objagg_obj_destroy(objagg, objagg_obj);
}
