
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct user_key_payload {size_t datalen; int * data; } ;
struct key {int sem; } ;


 int EKEYREVOKED ;
 struct key* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct key*) ;
 int down_read (int *) ;
 int key_put (struct key*) ;
 int key_type_user ;
 struct key* request_key (int *,char const*,int *) ;
 int up_read (int *) ;
 struct user_key_payload* user_key_payload_locked (struct key*) ;

__attribute__((used)) static struct key *request_user_key(const char *master_desc, const u8 **master_key,
        size_t *master_keylen)
{
 const struct user_key_payload *upayload;
 struct key *ukey;

 ukey = request_key(&key_type_user, master_desc, ((void*)0));
 if (IS_ERR(ukey))
  goto error;

 down_read(&ukey->sem);
 upayload = user_key_payload_locked(ukey);
 if (!upayload) {

  up_read(&ukey->sem);
  key_put(ukey);
  ukey = ERR_PTR(-EKEYREVOKED);
  goto error;
 }
 *master_key = upayload->data;
 *master_keylen = upayload->datalen;
error:
 return ukey;
}
