
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objagg_obj {int root_id; } ;
struct objagg {int root_ida; int hints; } ;


 int ida_free (int *,int ) ;

__attribute__((used)) static void objagg_obj_root_id_free(struct objagg *objagg,
        struct objagg_obj *objagg_obj)
{
 if (!objagg->hints)
  return;
 ida_free(&objagg->root_ida, objagg_obj->root_id);
}
