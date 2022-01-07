
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct trusted_key_payload {size_t key_len; int * key; } ;
struct TYPE_2__ {struct trusted_key_payload** data; } ;
struct key {TYPE_1__ payload; int sem; } ;


 scalar_t__ IS_ERR (struct key*) ;
 int down_read (int *) ;
 int key_type_trusted ;
 struct key* request_key (int *,char const*,int *) ;

struct key *request_trusted_key(const char *trusted_desc,
    const u8 **master_key, size_t *master_keylen)
{
 struct trusted_key_payload *tpayload;
 struct key *tkey;

 tkey = request_key(&key_type_trusted, trusted_desc, ((void*)0));
 if (IS_ERR(tkey))
  goto error;

 down_read(&tkey->sem);
 tpayload = tkey->payload.data[0];
 *master_key = tpayload->key;
 *master_keylen = tpayload->key_len;
error:
 return tkey;
}
