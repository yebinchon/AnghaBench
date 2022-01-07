
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_preparsed_payload {size_t datalen; int data; } ;
struct key {int description; } ;
typedef char encrypted_key_payload ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int datablob_parse (char*,char const**,char**,char**,char**) ;
 int encrypted_init (char*,int ,char const*,char*,char*,char*) ;
 char* encrypted_key_alloc (struct key*,char const*,char*,char*) ;
 char* kmalloc (size_t,int ) ;
 int kzfree (char*) ;
 int memcpy (char*,int ,size_t) ;
 int rcu_assign_keypointer (struct key*,char*) ;

__attribute__((used)) static int encrypted_instantiate(struct key *key,
     struct key_preparsed_payload *prep)
{
 struct encrypted_key_payload *epayload = ((void*)0);
 char *datablob = ((void*)0);
 const char *format = ((void*)0);
 char *master_desc = ((void*)0);
 char *decrypted_datalen = ((void*)0);
 char *hex_encoded_iv = ((void*)0);
 size_t datalen = prep->datalen;
 int ret;

 if (datalen <= 0 || datalen > 32767 || !prep->data)
  return -EINVAL;

 datablob = kmalloc(datalen + 1, GFP_KERNEL);
 if (!datablob)
  return -ENOMEM;
 datablob[datalen] = 0;
 memcpy(datablob, prep->data, datalen);
 ret = datablob_parse(datablob, &format, &master_desc,
        &decrypted_datalen, &hex_encoded_iv);
 if (ret < 0)
  goto out;

 epayload = encrypted_key_alloc(key, format, master_desc,
           decrypted_datalen);
 if (IS_ERR(epayload)) {
  ret = PTR_ERR(epayload);
  goto out;
 }
 ret = encrypted_init(epayload, key->description, format, master_desc,
        decrypted_datalen, hex_encoded_iv);
 if (ret < 0) {
  kzfree(epayload);
  goto out;
 }

 rcu_assign_keypointer(key, epayload);
out:
 kzfree(datablob);
 return ret;
}
