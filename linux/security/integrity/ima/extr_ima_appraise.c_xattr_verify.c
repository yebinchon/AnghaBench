
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct integrity_iint_cache {int flags; TYPE_1__* ima_hash; int atomic_flags; } ;
struct evm_ima_xattr_data {int type; int * data; } ;
typedef enum integrity_status { ____Placeholder_integrity_status } integrity_status ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;
struct TYPE_2__ {int length; int digest; } ;


 int CONFIG_INTEGRITY_PLATFORM_KEYRING ;
 int EINVAL ;
 int EOPNOTSUPP ;

 int IMA_DIGSIG ;
 int IMA_DIGSIG_REQUIRED ;


 int INTEGRITY_FAIL ;
 int INTEGRITY_KEYRING_IMA ;
 int INTEGRITY_KEYRING_PLATFORM ;
 int INTEGRITY_PASS ;
 int INTEGRITY_UNKNOWN ;
 int IS_ENABLED (int ) ;
 int KEXEC_KERNEL_CHECK ;
 int clear_bit (int ,int *) ;
 int integrity_digsig_verify (int ,char const*,int,int ,int) ;
 int memcmp (int *,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int xattr_verify(enum ima_hooks func, struct integrity_iint_cache *iint,
   struct evm_ima_xattr_data *xattr_value, int xattr_len,
   enum integrity_status *status, const char **cause)
{
 int rc = -EINVAL, hash_start = 0;

 switch (xattr_value->type) {
 case 128:

  hash_start = 1;

 case 129:
  if (iint->flags & IMA_DIGSIG_REQUIRED) {
   *cause = "IMA-signature-required";
   *status = INTEGRITY_FAIL;
   break;
  }
  clear_bit(IMA_DIGSIG, &iint->atomic_flags);
  if (xattr_len - sizeof(xattr_value->type) - hash_start >=
    iint->ima_hash->length)




   rc = memcmp(&xattr_value->data[hash_start],
        iint->ima_hash->digest,
        iint->ima_hash->length);
  else
   rc = -EINVAL;
  if (rc) {
   *cause = "invalid-hash";
   *status = INTEGRITY_FAIL;
   break;
  }
  *status = INTEGRITY_PASS;
  break;
 case 130:
  set_bit(IMA_DIGSIG, &iint->atomic_flags);
  rc = integrity_digsig_verify(INTEGRITY_KEYRING_IMA,
          (const char *)xattr_value,
          xattr_len,
          iint->ima_hash->digest,
          iint->ima_hash->length);
  if (rc == -EOPNOTSUPP) {
   *status = INTEGRITY_UNKNOWN;
   break;
  }
  if (IS_ENABLED(CONFIG_INTEGRITY_PLATFORM_KEYRING) && rc &&
      func == KEXEC_KERNEL_CHECK)
   rc = integrity_digsig_verify(INTEGRITY_KEYRING_PLATFORM,
           (const char *)xattr_value,
           xattr_len,
           iint->ima_hash->digest,
           iint->ima_hash->length);
  if (rc) {
   *cause = "invalid-signature";
   *status = INTEGRITY_FAIL;
  } else {
   *status = INTEGRITY_PASS;
  }
  break;
 default:
  *status = INTEGRITY_UNKNOWN;
  *cause = "unknown-ima-data";
  break;
 }

 return rc;
}
