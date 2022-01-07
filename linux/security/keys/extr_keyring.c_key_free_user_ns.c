
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int persistent_keyring_register; int user_keyring_register; int keyring_name_list; } ;


 int key_put (int ) ;
 int keyring_name_lock ;
 int list_del_init (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void key_free_user_ns(struct user_namespace *ns)
{
 write_lock(&keyring_name_lock);
 list_del_init(&ns->keyring_name_list);
 write_unlock(&keyring_name_lock);

 key_put(ns->user_keyring_register);



}
