
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int EVM_INIT_HMAC ;
 int EVM_SET_KEY_BUSY ;
 size_t MAX_KEY_SIZE ;
 int clear_bit (int ,int *) ;
 int evm_initialized ;
 int evm_set_key_flags ;
 int evmkey ;
 int memcpy (int ,void*,size_t) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int evm_set_key(void *key, size_t keylen)
{
 int rc;

 rc = -EBUSY;
 if (test_and_set_bit(EVM_SET_KEY_BUSY, &evm_set_key_flags))
  goto busy;
 rc = -EINVAL;
 if (keylen > MAX_KEY_SIZE)
  goto inval;
 memcpy(evmkey, key, keylen);
 evm_initialized |= EVM_INIT_HMAC;
 pr_info("key initialized\n");
 return 0;
inval:
 clear_bit(EVM_SET_KEY_BUSY, &evm_set_key_flags);
busy:
 pr_err("key initialization failed\n");
 return rc;
}
