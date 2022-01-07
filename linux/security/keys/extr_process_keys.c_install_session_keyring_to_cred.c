
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct cred {struct key* session_keyring; int gid; int uid; } ;


 scalar_t__ IS_ERR (struct key*) ;
 unsigned long KEY_ALLOC_IN_QUOTA ;
 unsigned long KEY_ALLOC_QUOTA_OVERRUN ;
 int KEY_POS_ALL ;
 int KEY_USR_READ ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int __key_get (struct key*) ;
 int key_put (struct key*) ;
 struct key* keyring_alloc (char*,int ,int ,struct cred*,int,unsigned long,int *,int *) ;
 int might_sleep () ;

int install_session_keyring_to_cred(struct cred *cred, struct key *keyring)
{
 unsigned long flags;
 struct key *old;

 might_sleep();


 if (!keyring) {
  flags = KEY_ALLOC_QUOTA_OVERRUN;
  if (cred->session_keyring)
   flags = KEY_ALLOC_IN_QUOTA;

  keyring = keyring_alloc("_ses", cred->uid, cred->gid, cred,
     KEY_POS_ALL | KEY_USR_VIEW | KEY_USR_READ,
     flags, ((void*)0), ((void*)0));
  if (IS_ERR(keyring))
   return PTR_ERR(keyring);
 } else {
  __key_get(keyring);
 }


 old = cred->session_keyring;
 cred->session_keyring = keyring;

 if (old)
  key_put(old);

 return 0;
}
