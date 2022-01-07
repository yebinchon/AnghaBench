
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_key_auth {struct key* dest_keyring; } ;
struct key {int sem; int flags; } ;
struct cred {int jit_keyring; struct key* session_keyring; struct key* process_keyring; struct key* thread_keyring; struct key* request_key_auth; } ;


 int BUG () ;
 int KEY_FLAG_REVOKED ;
 int KEY_NEED_WRITE ;
 struct cred* current_cred () ;
 int down_read (int *) ;
 struct request_key_auth* get_request_key_auth (struct key*) ;
 int kenter (char*,struct key*) ;
 struct key* key_get (struct key*) ;
 int key_permission (int ,int ) ;
 int key_put (struct key*) ;
 int key_serial (struct key*) ;
 int kleave (char*,int ) ;
 int look_up_user_keyrings (struct key**,struct key**) ;
 int make_key_ref (struct key*,int) ;
 int test_bit (int ,int *) ;
 int up_read (int *) ;

__attribute__((used)) static int construct_get_dest_keyring(struct key **_dest_keyring)
{
 struct request_key_auth *rka;
 const struct cred *cred = current_cred();
 struct key *dest_keyring = *_dest_keyring, *authkey;
 int ret;

 kenter("%p", dest_keyring);


 if (dest_keyring) {

  key_get(dest_keyring);
 } else {
  bool do_perm_check = 1;



  switch (cred->jit_keyring) {
  case 135:
  case 132:
   if (cred->request_key_auth) {
    authkey = cred->request_key_auth;
    down_read(&authkey->sem);
    rka = get_request_key_auth(authkey);
    if (!test_bit(KEY_FLAG_REVOKED,
           &authkey->flags))
     dest_keyring =
      key_get(rka->dest_keyring);
    up_read(&authkey->sem);
    if (dest_keyring) {
     do_perm_check = 0;
     break;
    }
   }


  case 130:
   dest_keyring = key_get(cred->thread_keyring);
   if (dest_keyring)
    break;


  case 133:
   dest_keyring = key_get(cred->process_keyring);
   if (dest_keyring)
    break;


  case 131:
   dest_keyring = key_get(cred->session_keyring);

   if (dest_keyring)
    break;


  case 128:
   ret = look_up_user_keyrings(((void*)0), &dest_keyring);
   if (ret < 0)
    return ret;
   break;

  case 129:
   ret = look_up_user_keyrings(&dest_keyring, ((void*)0));
   if (ret < 0)
    return ret;
   break;

  case 134:
  default:
   BUG();
  }
  if (dest_keyring && do_perm_check) {
   ret = key_permission(make_key_ref(dest_keyring, 1),
          KEY_NEED_WRITE);
   if (ret) {
    key_put(dest_keyring);
    return ret;
   }
  }
 }

 *_dest_keyring = dest_keyring;
 kleave(" [dk %d]", key_serial(dest_keyring));
 return 0;
}
