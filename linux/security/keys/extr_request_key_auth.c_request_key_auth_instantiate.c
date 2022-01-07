
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_key_auth {int dummy; } ;
struct key_preparsed_payload {scalar_t__ data; } ;
struct key {int dummy; } ;


 int rcu_assign_keypointer (struct key*,struct request_key_auth*) ;

__attribute__((used)) static int request_key_auth_instantiate(struct key *key,
     struct key_preparsed_payload *prep)
{
 rcu_assign_keypointer(key, (struct request_key_auth *)prep->data);
 return 0;
}
