
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_key_auth {int rcu; } ;
struct key {int serial; } ;


 int call_rcu (int *,int ) ;
 struct request_key_auth* dereference_key_locked (struct key*) ;
 int kenter (char*,int ) ;
 int rcu_assign_keypointer (struct key*,int *) ;
 int request_key_auth_rcu_disposal ;

__attribute__((used)) static void request_key_auth_revoke(struct key *key)
{
 struct request_key_auth *rka = dereference_key_locked(key);

 kenter("{%d}", key->serial);
 rcu_assign_keypointer(key, ((void*)0));
 call_rcu(&rka->rcu, request_key_auth_rcu_disposal);
}
