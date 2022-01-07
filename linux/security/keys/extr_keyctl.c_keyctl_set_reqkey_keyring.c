
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int jit_keyring; } ;


 int EINVAL ;
 long ENOMEM ;
 int abort_creds (struct cred*) ;
 int commit_creds (struct cred*) ;
 int current_cred_xxx (int ) ;
 int install_process_keyring_to_cred (struct cred*) ;
 int install_thread_keyring_to_cred (struct cred*) ;
 int jit_keyring ;
 struct cred* prepare_creds () ;

long keyctl_set_reqkey_keyring(int reqkey_defl)
{
 struct cred *new;
 int ret, old_setting;

 old_setting = current_cred_xxx(jit_keyring);

 if (reqkey_defl == 134)
  return old_setting;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 switch (reqkey_defl) {
 case 130:
  ret = install_thread_keyring_to_cred(new);
  if (ret < 0)
   goto error;
  goto set;

 case 133:
  ret = install_process_keyring_to_cred(new);
  if (ret < 0)
   goto error;
  goto set;

 case 136:
 case 131:
 case 129:
 case 128:
 case 132:
  goto set;

 case 134:
 case 135:
 default:
  ret = -EINVAL;
  goto error;
 }

set:
 new->jit_keyring = reqkey_defl;
 commit_creds(new);
 return old_setting;
error:
 abort_creds(new);
 return ret;
}
