
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;


 int EINVAL ;
 struct key* ERR_PTR (int) ;
 unsigned int const INTEGRITY_KEYRING_MAX ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 int key_type_keyring ;
 struct key** keyring ;
 int * keyring_name ;
 int pr_err (char*,int ,int) ;
 struct key* request_key (int *,int ,int *) ;

__attribute__((used)) static struct key *integrity_keyring_from_id(const unsigned int id)
{
 if (id >= INTEGRITY_KEYRING_MAX)
  return ERR_PTR(-EINVAL);

 if (!keyring[id]) {
  keyring[id] =
   request_key(&key_type_keyring, keyring_name[id], ((void*)0));
  if (IS_ERR(keyring[id])) {
   int err = PTR_ERR(keyring[id]);
   pr_err("no %s keyring: %d\n", keyring_name[id], err);
   keyring[id] = ((void*)0);
   return ERR_PTR(err);
  }
 }

 return keyring[id];
}
