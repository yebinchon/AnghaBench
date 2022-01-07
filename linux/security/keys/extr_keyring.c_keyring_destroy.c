
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct key_restriction {int key; } ;
struct TYPE_3__ {int * next; } ;
struct key {int keys; struct key_restriction* restrict_link; TYPE_1__ name_link; scalar_t__ description; } ;


 int assoc_array_destroy (int *,int *) ;
 int key_put (int ) ;
 int keyring_assoc_array_ops ;
 int keyring_name_lock ;
 int kfree (struct key_restriction*) ;
 int list_del (TYPE_1__*) ;
 int list_empty (TYPE_1__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void keyring_destroy(struct key *keyring)
{
 if (keyring->description) {
  write_lock(&keyring_name_lock);

  if (keyring->name_link.next != ((void*)0) &&
      !list_empty(&keyring->name_link))
   list_del(&keyring->name_link);

  write_unlock(&keyring_name_lock);
 }

 if (keyring->restrict_link) {
  struct key_restriction *keyres = keyring->restrict_link;

  key_put(keyres->key);
  kfree(keyres);
 }

 assoc_array_destroy(&keyring->keys, &keyring_assoc_array_ops);
}
