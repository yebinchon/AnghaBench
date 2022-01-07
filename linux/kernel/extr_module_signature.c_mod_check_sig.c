
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_signature {scalar_t__ id_type; scalar_t__ algo; scalar_t__ hash; scalar_t__ signer_len; scalar_t__ key_id_len; scalar_t__* __pad; int sig_len; } ;


 int EBADMSG ;
 int ENOPKG ;
 scalar_t__ PKEY_ID_PKCS7 ;
 size_t be32_to_cpu (int ) ;
 int pr_err (char*,char const*) ;

int mod_check_sig(const struct module_signature *ms, size_t file_len,
    const char *name)
{
 if (be32_to_cpu(ms->sig_len) >= file_len - sizeof(*ms))
  return -EBADMSG;

 if (ms->id_type != PKEY_ID_PKCS7) {
  pr_err("%s: Module is not signed with expected PKCS#7 message\n",
         name);
  return -ENOPKG;
 }

 if (ms->algo != 0 ||
     ms->hash != 0 ||
     ms->signer_len != 0 ||
     ms->key_id_len != 0 ||
     ms->__pad[0] != 0 ||
     ms->__pad[1] != 0 ||
     ms->__pad[2] != 0) {
  pr_err("%s: PKCS#7 signature info has unexpected non-zero params\n",
         name);
  return -EBADMSG;
 }

 return 0;
}
