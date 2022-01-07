
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct encrypted_key_payload** data; } ;
struct key {int sem; TYPE_1__ payload; } ;
struct encrypted_key_payload {int decrypted_datalen; int decrypted_data; } ;


 int ENOENT ;
 int EVMKEY ;
 scalar_t__ IS_ERR (struct key*) ;
 int down_read (int *) ;
 int evm_set_key (int ,int ) ;
 int key_put (struct key*) ;
 int key_type_encrypted ;
 int memset (int ,int ,int ) ;
 struct key* request_key (int *,int ,int *) ;
 int up_read (int *) ;

int evm_init_key(void)
{
 struct key *evm_key;
 struct encrypted_key_payload *ekp;
 int rc;

 evm_key = request_key(&key_type_encrypted, EVMKEY, ((void*)0));
 if (IS_ERR(evm_key))
  return -ENOENT;

 down_read(&evm_key->sem);
 ekp = evm_key->payload.data[0];

 rc = evm_set_key(ekp->decrypted_data, ekp->decrypted_datalen);


 memset(ekp->decrypted_data, 0, ekp->decrypted_datalen);
 up_read(&evm_key->sem);
 key_put(evm_key);
 return rc;
}
