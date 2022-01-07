
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_user {int node; int usage; } ;


 int key_user_lock ;
 int key_user_tree ;
 int kfree (struct key_user*) ;
 int rb_erase (int *,int *) ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

void key_user_put(struct key_user *user)
{
 if (refcount_dec_and_lock(&user->usage, &key_user_lock)) {
  rb_erase(&user->node, &key_user_tree);
  spin_unlock(&key_user_lock);

  kfree(user);
 }
}
