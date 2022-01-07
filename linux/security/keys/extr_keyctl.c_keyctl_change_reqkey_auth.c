
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct cred {int request_key_auth; } ;


 int ENOMEM ;
 int commit_creds (struct cred*) ;
 int key_get (struct key*) ;
 int key_put (int ) ;
 struct cred* prepare_creds () ;

__attribute__((used)) static int keyctl_change_reqkey_auth(struct key *key)
{
 struct cred *new;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 key_put(new->request_key_auth);
 new->request_key_auth = key_get(key);

 return commit_creds(new);
}
