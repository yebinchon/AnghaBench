
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_key_payload {int rcu; } ;
struct key {int dummy; } ;


 int call_rcu (int *,int ) ;
 int key_payload_reserve (struct key*,int ) ;
 int rcu_assign_keypointer (struct key*,int *) ;
 int user_free_payload_rcu ;
 struct user_key_payload* user_key_payload_locked (struct key*) ;

void user_revoke(struct key *key)
{
 struct user_key_payload *upayload = user_key_payload_locked(key);


 key_payload_reserve(key, 0);

 if (upayload) {
  rcu_assign_keypointer(key, ((void*)0));
  call_rcu(&upayload->rcu, user_free_payload_rcu);
 }
}
