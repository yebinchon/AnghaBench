
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_restriction {int dummy; } ;
struct key {int dummy; } ;
struct cred {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;
typedef int key_perm_t ;


 struct key* ERR_PTR (int) ;
 int IS_ERR (struct key*) ;
 struct key* key_alloc (int *,char const*,int ,int ,struct cred const*,int ,unsigned long,struct key_restriction*) ;
 int key_instantiate_and_link (struct key*,int *,int ,struct key*,int *) ;
 int key_put (struct key*) ;
 int key_type_keyring ;

struct key *keyring_alloc(const char *description, kuid_t uid, kgid_t gid,
     const struct cred *cred, key_perm_t perm,
     unsigned long flags,
     struct key_restriction *restrict_link,
     struct key *dest)
{
 struct key *keyring;
 int ret;

 keyring = key_alloc(&key_type_keyring, description,
       uid, gid, cred, perm, flags, restrict_link);
 if (!IS_ERR(keyring)) {
  ret = key_instantiate_and_link(keyring, ((void*)0), 0, dest, ((void*)0));
  if (ret < 0) {
   key_put(keyring);
   keyring = ERR_PTR(ret);
  }
 }

 return keyring;
}
