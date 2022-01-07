
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_key_auth {struct request_key_auth* callout_info; scalar_t__ cred; int dest_keyring; int target_key; } ;


 int key_put (int ) ;
 int kfree (struct request_key_auth*) ;
 int put_cred (scalar_t__) ;

__attribute__((used)) static void free_request_key_auth(struct request_key_auth *rka)
{
 if (!rka)
  return;
 key_put(rka->target_key);
 key_put(rka->dest_keyring);
 if (rka->cred)
  put_cred(rka->cred);
 kfree(rka->callout_info);
 kfree(rka);
}
