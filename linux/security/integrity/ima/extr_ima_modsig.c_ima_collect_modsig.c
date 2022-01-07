
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_signature {int dummy; } ;
struct modsig {int hash_algo; int digest_size; int digest; int pkcs7_msg; scalar_t__ raw_pkcs7_len; } ;
typedef int loff_t ;


 int MODULE_SIG_STRING ;
 int pkcs7_get_digest (int ,int *,int *,int *) ;
 int pkcs7_supply_detached_data (int ,void const*,int ) ;
 scalar_t__ strlen (int ) ;

void ima_collect_modsig(struct modsig *modsig, const void *buf, loff_t size)
{
 int rc;





 size -= modsig->raw_pkcs7_len + strlen(MODULE_SIG_STRING) +
  sizeof(struct module_signature);
 rc = pkcs7_supply_detached_data(modsig->pkcs7_msg, buf, size);
 if (rc)
  return;


 rc = pkcs7_get_digest(modsig->pkcs7_msg, &modsig->digest,
         &modsig->digest_size, &modsig->hash_algo);
}
