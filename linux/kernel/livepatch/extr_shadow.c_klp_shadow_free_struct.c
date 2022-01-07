
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_shadow {int data; int obj; int node; } ;
typedef int (* klp_shadow_dtor_t ) (int ,int ) ;


 int hash_del_rcu (int *) ;
 int kfree_rcu (struct klp_shadow*,int ) ;
 int rcu_head ;

__attribute__((used)) static void klp_shadow_free_struct(struct klp_shadow *shadow,
       klp_shadow_dtor_t dtor)
{
 hash_del_rcu(&shadow->node);
 if (dtor)
  dtor(shadow->obj, shadow->data);
 kfree_rcu(shadow, rcu_head);
}
