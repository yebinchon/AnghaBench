
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_key_payload {int rcu; } ;
struct TYPE_2__ {int ** data; } ;
struct key_preparsed_payload {TYPE_1__ payload; int expiry; int datalen; } ;
struct key {int expiry; } ;


 int call_rcu (int *,int ) ;
 struct user_key_payload* dereference_key_locked (struct key*) ;
 scalar_t__ key_is_positive (struct key*) ;
 int key_payload_reserve (struct key*,int ) ;
 int rcu_assign_keypointer (struct key*,int *) ;
 int user_free_payload_rcu ;

int user_update(struct key *key, struct key_preparsed_payload *prep)
{
 struct user_key_payload *zap = ((void*)0);
 int ret;


 ret = key_payload_reserve(key, prep->datalen);
 if (ret < 0)
  return ret;


 key->expiry = prep->expiry;
 if (key_is_positive(key))
  zap = dereference_key_locked(key);
 rcu_assign_keypointer(key, prep->payload.data[0]);
 prep->payload.data[0] = ((void*)0);

 if (zap)
  call_rcu(&zap->rcu, user_free_payload_rcu);
 return ret;
}
