
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_key_auth {struct key* target_key; } ;
struct key {int serial; } ;


 struct request_key_auth* get_request_key_auth (struct key*) ;
 int kenter (char*,int ,int ,int) ;
 int key_negate_and_link (struct key*,int ,int *,struct key*) ;
 int key_negative_timeout ;
 int key_revoke (struct key*) ;

void complete_request_key(struct key *authkey, int error)
{
 struct request_key_auth *rka = get_request_key_auth(authkey);
 struct key *key = rka->target_key;

 kenter("%d{%d},%d", authkey->serial, key->serial, error);

 if (error < 0)
  key_negate_and_link(key, key_negative_timeout, ((void*)0), authkey);
 else
  key_revoke(authkey);
}
