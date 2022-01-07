
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int keyring_sem; struct key* user_keyring_register; int owner; } ;
struct key {int dummy; } ;


 int INVALID_GID ;
 int IS_ERR (struct key*) ;
 int KEY_POS_SEARCH ;
 int KEY_POS_WRITE ;
 int KEY_USR_READ ;
 int KEY_USR_VIEW ;
 struct key* READ_ONCE (struct key*) ;
 int down_write (int *) ;
 int init_cred ;
 struct key* keyring_alloc (char*,int ,int ,int *,int,int ,int *,int *) ;
 int smp_store_release (struct key**,struct key*) ;
 int up_write (int *) ;

__attribute__((used)) static struct key *get_user_register(struct user_namespace *user_ns)
{
 struct key *reg_keyring = READ_ONCE(user_ns->user_keyring_register);

 if (reg_keyring)
  return reg_keyring;

 down_write(&user_ns->keyring_sem);




 reg_keyring = user_ns->user_keyring_register;
 if (!reg_keyring) {
  reg_keyring = keyring_alloc(".user_reg",
         user_ns->owner, INVALID_GID,
         &init_cred,
         KEY_POS_WRITE | KEY_POS_SEARCH |
         KEY_USR_VIEW | KEY_USR_READ,
         0,
         ((void*)0), ((void*)0));
  if (!IS_ERR(reg_keyring))
   smp_store_release(&user_ns->user_keyring_register,
       reg_keyring);
 }

 up_write(&user_ns->keyring_sem);


 return reg_keyring;
}
