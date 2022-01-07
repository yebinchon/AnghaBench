
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_key_auth {size_t callout_len; void* dest_keyring; void* target_key; int pid; struct cred const* cred; int op; int callout_info; } ;
struct key {int serial; int usage; } ;
struct cred {int fsgid; int fsuid; TYPE_2__* request_key_auth; } ;
struct TYPE_6__ {int pid; } ;
struct TYPE_4__ {struct request_key_auth** data; } ;
struct TYPE_5__ {int sem; TYPE_1__ payload; int flags; } ;


 int EKEYREVOKED ;
 int ENOMEM ;
 struct key* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_FLAG_REVOKED ;
 int KEY_POS_LINK ;
 int KEY_POS_READ ;
 int KEY_POS_SEARCH ;
 int KEY_POS_VIEW ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 TYPE_3__* current ;
 struct cred* current_cred () ;
 int down_read (int *) ;
 int free_request_key_auth (struct request_key_auth*) ;
 void* get_cred (struct cred const*) ;
 int kenter (char*,int) ;
 struct key* key_alloc (int *,char*,int ,int ,struct cred const*,int,int ,int *) ;
 void* key_get (struct key*) ;
 int key_instantiate_and_link (struct key*,struct request_key_auth*,int ,int *,int *) ;
 int key_put (struct key*) ;
 int key_type_request_key_auth ;
 int kleave (char*,int,...) ;
 int kmemdup (void const*,size_t,int ) ;
 struct request_key_auth* kzalloc (int,int ) ;
 int refcount_read (int *) ;
 int sprintf (char*,char*,int) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;

struct key *request_key_auth_new(struct key *target, const char *op,
     const void *callout_info, size_t callout_len,
     struct key *dest_keyring)
{
 struct request_key_auth *rka, *irka;
 const struct cred *cred = current_cred();
 struct key *authkey = ((void*)0);
 char desc[20];
 int ret = -ENOMEM;

 kenter("%d,", target->serial);


 rka = kzalloc(sizeof(*rka), GFP_KERNEL);
 if (!rka)
  goto error;
 rka->callout_info = kmemdup(callout_info, callout_len, GFP_KERNEL);
 if (!rka->callout_info)
  goto error_free_rka;
 rka->callout_len = callout_len;
 strlcpy(rka->op, op, sizeof(rka->op));



 if (cred->request_key_auth) {

  down_read(&cred->request_key_auth->sem);



  if (test_bit(KEY_FLAG_REVOKED,
        &cred->request_key_auth->flags)) {
   up_read(&cred->request_key_auth->sem);
   ret = -EKEYREVOKED;
   goto error_free_rka;
  }

  irka = cred->request_key_auth->payload.data[0];
  rka->cred = get_cred(irka->cred);
  rka->pid = irka->pid;

  up_read(&cred->request_key_auth->sem);
 }
 else {

  rka->cred = get_cred(cred);
  rka->pid = current->pid;
 }

 rka->target_key = key_get(target);
 rka->dest_keyring = key_get(dest_keyring);


 sprintf(desc, "%x", target->serial);

 authkey = key_alloc(&key_type_request_key_auth, desc,
       cred->fsuid, cred->fsgid, cred,
       KEY_POS_VIEW | KEY_POS_READ | KEY_POS_SEARCH | KEY_POS_LINK |
       KEY_USR_VIEW, KEY_ALLOC_NOT_IN_QUOTA, ((void*)0));
 if (IS_ERR(authkey)) {
  ret = PTR_ERR(authkey);
  goto error_free_rka;
 }


 ret = key_instantiate_and_link(authkey, rka, 0, ((void*)0), ((void*)0));
 if (ret < 0)
  goto error_put_authkey;

 kleave(" = {%d,%d}", authkey->serial, refcount_read(&authkey->usage));
 return authkey;

error_put_authkey:
 key_put(authkey);
error_free_rka:
 free_request_key_auth(rka);
error:
 kleave("= %d", ret);
 return ERR_PTR(ret);
}
