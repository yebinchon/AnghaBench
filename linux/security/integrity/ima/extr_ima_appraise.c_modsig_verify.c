
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modsig {int dummy; } ;
typedef enum integrity_status { ____Placeholder_integrity_status } integrity_status ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int CONFIG_INTEGRITY_PLATFORM_KEYRING ;
 int INTEGRITY_FAIL ;
 int INTEGRITY_KEYRING_IMA ;
 int INTEGRITY_KEYRING_PLATFORM ;
 int INTEGRITY_PASS ;
 scalar_t__ IS_ENABLED (int ) ;
 int KEXEC_KERNEL_CHECK ;
 int integrity_modsig_verify (int ,struct modsig const*) ;

__attribute__((used)) static int modsig_verify(enum ima_hooks func, const struct modsig *modsig,
    enum integrity_status *status, const char **cause)
{
 int rc;

 rc = integrity_modsig_verify(INTEGRITY_KEYRING_IMA, modsig);
 if (IS_ENABLED(CONFIG_INTEGRITY_PLATFORM_KEYRING) && rc &&
     func == KEXEC_KERNEL_CHECK)
  rc = integrity_modsig_verify(INTEGRITY_KEYRING_PLATFORM,
          modsig);
 if (rc) {
  *cause = "invalid-signature";
  *status = INTEGRITY_FAIL;
 } else {
  *status = INTEGRITY_PASS;
 }

 return rc;
}
