
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_key_auth {int rcu; } ;
struct TYPE_2__ {int rcu_data0; } ;
struct key {int serial; TYPE_1__ payload; } ;


 int call_rcu (int *,int ) ;
 int kenter (char*,int ) ;
 struct request_key_auth* rcu_access_pointer (int ) ;
 int rcu_assign_keypointer (struct key*,int *) ;
 int request_key_auth_rcu_disposal ;

__attribute__((used)) static void request_key_auth_destroy(struct key *key)
{
 struct request_key_auth *rka = rcu_access_pointer(key->payload.rcu_data0);

 kenter("{%d}", key->serial);
 if (rka) {
  rcu_assign_keypointer(key, ((void*)0));
  call_rcu(&rka->rcu, request_key_auth_rcu_disposal);
 }
}
