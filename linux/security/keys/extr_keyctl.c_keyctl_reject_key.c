
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_key_auth {TYPE_2__* target_key; } ;
struct TYPE_3__ {struct request_key_auth** data; } ;
struct key {TYPE_1__ payload; } ;
struct cred {struct key* request_key_auth; } ;
typedef scalar_t__ key_serial_t ;
struct TYPE_4__ {scalar_t__ serial; } ;


 long EINVAL ;
 long EPERM ;
 unsigned int ERESTARTNOHAND ;
 unsigned int ERESTARTNOINTR ;
 unsigned int ERESTARTSYS ;
 unsigned int ERESTART_RESTARTBLOCK ;
 unsigned int MAX_ERRNO ;
 struct cred* current_cred () ;
 long get_instantiation_keyring (scalar_t__,struct request_key_auth*,struct key**) ;
 int kenter (char*,scalar_t__,unsigned int,unsigned int,scalar_t__) ;
 int key_put (struct key*) ;
 long key_reject_and_link (TYPE_2__*,unsigned int,unsigned int,struct key*,struct key*) ;
 int keyctl_change_reqkey_auth (int *) ;

long keyctl_reject_key(key_serial_t id, unsigned timeout, unsigned error,
         key_serial_t ringid)
{
 const struct cred *cred = current_cred();
 struct request_key_auth *rka;
 struct key *instkey, *dest_keyring;
 long ret;

 kenter("%d,%u,%u,%d", id, timeout, error, ringid);


 if (error <= 0 ||
     error >= MAX_ERRNO ||
     error == ERESTARTSYS ||
     error == ERESTARTNOINTR ||
     error == ERESTARTNOHAND ||
     error == ERESTART_RESTARTBLOCK)
  return -EINVAL;



 ret = -EPERM;
 instkey = cred->request_key_auth;
 if (!instkey)
  goto error;

 rka = instkey->payload.data[0];
 if (rka->target_key->serial != id)
  goto error;



 ret = get_instantiation_keyring(ringid, rka, &dest_keyring);
 if (ret < 0)
  goto error;


 ret = key_reject_and_link(rka->target_key, timeout, error,
      dest_keyring, instkey);

 key_put(dest_keyring);



 if (ret == 0)
  keyctl_change_reqkey_auth(((void*)0));

error:
 return ret;
}
