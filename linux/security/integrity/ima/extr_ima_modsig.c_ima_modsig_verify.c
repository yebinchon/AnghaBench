
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modsig {int pkcs7_msg; } ;
struct key {int dummy; } ;


 int VERIFYING_MODULE_SIGNATURE ;
 int verify_pkcs7_message_sig (int *,int ,int ,struct key*,int ,int *,int *) ;

int ima_modsig_verify(struct key *keyring, const struct modsig *modsig)
{
 return verify_pkcs7_message_sig(((void*)0), 0, modsig->pkcs7_msg, keyring,
     VERIFYING_MODULE_SIGNATURE, ((void*)0), ((void*)0));
}
