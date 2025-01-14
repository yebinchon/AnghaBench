
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct cred {int dummy; } ;


 int ENOMEM ;
 int abort_creds (struct cred*) ;
 int commit_creds (struct cred*) ;
 int install_session_keyring_to_cred (struct cred*,struct key*) ;
 struct cred* prepare_creds () ;

__attribute__((used)) static int install_session_keyring(struct key *keyring)
{
 struct cred *new;
 int ret;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 ret = install_session_keyring_to_cred(new, keyring);
 if (ret < 0) {
  abort_creds(new);
  return ret;
 }

 return commit_creds(new);
}
