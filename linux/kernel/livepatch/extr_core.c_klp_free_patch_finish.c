
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_patch {int mod; int forced; int finish; int kobj; } ;


 int kobject_put (int *) ;
 int module_put (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void klp_free_patch_finish(struct klp_patch *patch)
{






 kobject_put(&patch->kobj);
 wait_for_completion(&patch->finish);


 if (!patch->forced)
  module_put(patch->mod);
}
