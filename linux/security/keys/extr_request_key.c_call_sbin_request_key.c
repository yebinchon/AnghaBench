
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_key_auth {scalar_t__ op; struct key* target_key; } ;
struct key {int serial; int flags; } ;
struct cred {struct key* session_keyring; TYPE_2__* process_keyring; TYPE_1__* thread_keyring; int fsgid; int fsuid; } ;
typedef int key_serial_t ;
struct TYPE_4__ {int serial; } ;
struct TYPE_3__ {int serial; } ;


 int ENOKEY ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_QUOTA_OVERRUN ;
 int KEY_FLAG_USER_CONSTRUCT ;
 int KEY_POS_ALL ;
 int KEY_USR_READ ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int UMH_WAIT_PROC ;
 int call_usermodehelper_keys (char const*,char**,char**,struct key*,int ) ;
 int complete_request_key (struct key*,int) ;
 struct cred* current_cred () ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 struct cred* get_current_cred () ;
 struct request_key_auth* get_request_key_auth (struct key*) ;
 int init_user_ns ;
 int kdebug (char*,int) ;
 int kenter (char*,int,int,scalar_t__) ;
 int key_link (struct key*,struct key*) ;
 int key_put (struct key*) ;
 scalar_t__ key_validate (struct key*) ;
 struct key* keyring_alloc (char*,int ,int ,struct cred const*,int,int ,int *,int *) ;
 int kleave (char*,int) ;
 int look_up_user_keyrings (int *,struct key**) ;
 int put_cred (struct cred const*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int call_sbin_request_key(struct key *authkey, void *aux)
{
 static char const request_key[] = "/sbin/request-key";
 struct request_key_auth *rka = get_request_key_auth(authkey);
 const struct cred *cred = current_cred();
 key_serial_t prkey, sskey;
 struct key *key = rka->target_key, *keyring, *session, *user_session;
 char *argv[9], *envp[3], uid_str[12], gid_str[12];
 char key_str[12], keyring_str[3][12];
 char desc[20];
 int ret, i;

 kenter("{%d},{%d},%s", key->serial, authkey->serial, rka->op);

 ret = look_up_user_keyrings(((void*)0), &user_session);
 if (ret < 0)
  goto error_us;


 sprintf(desc, "_req.%u", key->serial);

 cred = get_current_cred();
 keyring = keyring_alloc(desc, cred->fsuid, cred->fsgid, cred,
    KEY_POS_ALL | KEY_USR_VIEW | KEY_USR_READ,
    KEY_ALLOC_QUOTA_OVERRUN, ((void*)0), ((void*)0));
 put_cred(cred);
 if (IS_ERR(keyring)) {
  ret = PTR_ERR(keyring);
  goto error_alloc;
 }


 ret = key_link(keyring, authkey);
 if (ret < 0)
  goto error_link;


 sprintf(uid_str, "%d", from_kuid(&init_user_ns, cred->fsuid));
 sprintf(gid_str, "%d", from_kgid(&init_user_ns, cred->fsgid));


 sprintf(key_str, "%d", key->serial);


 sprintf(keyring_str[0], "%d",
  cred->thread_keyring ? cred->thread_keyring->serial : 0);

 prkey = 0;
 if (cred->process_keyring)
  prkey = cred->process_keyring->serial;
 sprintf(keyring_str[1], "%d", prkey);

 session = cred->session_keyring;
 if (!session)
  session = user_session;
 sskey = session->serial;

 sprintf(keyring_str[2], "%d", sskey);


 i = 0;
 envp[i++] = "HOME=/";
 envp[i++] = "PATH=/sbin:/bin:/usr/sbin:/usr/bin";
 envp[i] = ((void*)0);


 i = 0;
 argv[i++] = (char *)request_key;
 argv[i++] = (char *)rka->op;
 argv[i++] = key_str;
 argv[i++] = uid_str;
 argv[i++] = gid_str;
 argv[i++] = keyring_str[0];
 argv[i++] = keyring_str[1];
 argv[i++] = keyring_str[2];
 argv[i] = ((void*)0);


 ret = call_usermodehelper_keys(request_key, argv, envp, keyring,
           UMH_WAIT_PROC);
 kdebug("usermode -> 0x%x", ret);
 if (ret >= 0) {

  if (test_bit(KEY_FLAG_USER_CONSTRUCT, &key->flags) ||
      key_validate(key) < 0)
   ret = -ENOKEY;
  else


   ret = 0;
 }

error_link:
 key_put(keyring);

error_alloc:
 key_put(user_session);
error_us:
 complete_request_key(authkey, ret);
 kleave(" = %d", ret);
 return ret;
}
