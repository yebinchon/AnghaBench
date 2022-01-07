
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct cred {struct key* thread_keyring; int gid; int uid; } ;


 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_QUOTA_OVERRUN ;
 int KEY_POS_ALL ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 struct key* keyring_alloc (char*,int ,int ,struct cred*,int,int ,int *,int *) ;

int install_thread_keyring_to_cred(struct cred *new)
{
 struct key *keyring;

 if (new->thread_keyring)
  return 0;

 keyring = keyring_alloc("_tid", new->uid, new->gid, new,
    KEY_POS_ALL | KEY_USR_VIEW,
    KEY_ALLOC_QUOTA_OVERRUN,
    ((void*)0), ((void*)0));
 if (IS_ERR(keyring))
  return PTR_ERR(keyring);

 new->thread_keyring = keyring;
 return 0;
}
