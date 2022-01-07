
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_type {int dummy; } ;
struct key_restriction {struct key_type* keytype; int * key; int check; } ;
struct key {int sem; struct key_restriction* restrict_link; scalar_t__ description; int serial; } ;


 int down_write (int *) ;
 int kenter (char*,int ,char*) ;
 int key_put (int *) ;
 int kleave (char*) ;
 int restrict_link_reject ;
 int up_write (int *) ;

void keyring_restriction_gc(struct key *keyring, struct key_type *dead_type)
{
 struct key_restriction *keyres;

 kenter("%x{%s}", keyring->serial, keyring->description ?: "");
 if (!dead_type || !keyring->restrict_link ||
     keyring->restrict_link->keytype != dead_type) {
  kleave(" [no restriction gc]");
  return;
 }


 down_write(&keyring->sem);

 keyres = keyring->restrict_link;

 keyres->check = restrict_link_reject;

 key_put(keyres->key);
 keyres->key = ((void*)0);
 keyres->keytype = ((void*)0);

 up_write(&keyring->sem);

 kleave(" [restriction gc]");
}
