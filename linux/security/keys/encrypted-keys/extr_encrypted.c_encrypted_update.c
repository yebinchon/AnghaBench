
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_preparsed_payload {size_t datalen; char* data; } ;
struct TYPE_2__ {struct encrypted_key_payload** data; } ;
struct key {TYPE_1__ payload; } ;
struct encrypted_key_payload {char* iv; char* payload_data; size_t payload_datalen; int rcu; int datalen; int format; int master_desc; } ;


 int EINVAL ;
 int ENOKEY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct encrypted_key_payload*) ;
 int PTR_ERR (struct encrypted_key_payload*) ;
 int __ekey_init (struct encrypted_key_payload*,int ,char*,int ) ;
 int call_rcu (int *,int ) ;
 int datablob_parse (char*,char const**,char**,int *,int *) ;
 struct encrypted_key_payload* encrypted_key_alloc (struct key*,int ,char*,int ) ;
 int encrypted_rcu_free ;
 size_t ivsize ;
 scalar_t__ key_is_negative (struct key*) ;
 char* kmalloc (size_t,int ) ;
 int kzfree (char*) ;
 int memcpy (char*,char*,size_t) ;
 int rcu_assign_keypointer (struct key*,struct encrypted_key_payload*) ;
 int valid_master_desc (char*,int ) ;

__attribute__((used)) static int encrypted_update(struct key *key, struct key_preparsed_payload *prep)
{
 struct encrypted_key_payload *epayload = key->payload.data[0];
 struct encrypted_key_payload *new_epayload;
 char *buf;
 char *new_master_desc = ((void*)0);
 const char *format = ((void*)0);
 size_t datalen = prep->datalen;
 int ret = 0;

 if (key_is_negative(key))
  return -ENOKEY;
 if (datalen <= 0 || datalen > 32767 || !prep->data)
  return -EINVAL;

 buf = kmalloc(datalen + 1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 buf[datalen] = 0;
 memcpy(buf, prep->data, datalen);
 ret = datablob_parse(buf, &format, &new_master_desc, ((void*)0), ((void*)0));
 if (ret < 0)
  goto out;

 ret = valid_master_desc(new_master_desc, epayload->master_desc);
 if (ret < 0)
  goto out;

 new_epayload = encrypted_key_alloc(key, epayload->format,
        new_master_desc, epayload->datalen);
 if (IS_ERR(new_epayload)) {
  ret = PTR_ERR(new_epayload);
  goto out;
 }

 __ekey_init(new_epayload, epayload->format, new_master_desc,
      epayload->datalen);

 memcpy(new_epayload->iv, epayload->iv, ivsize);
 memcpy(new_epayload->payload_data, epayload->payload_data,
        epayload->payload_datalen);

 rcu_assign_keypointer(key, new_epayload);
 call_rcu(&epayload->rcu, encrypted_rcu_free);
out:
 kzfree(buf);
 return ret;
}
