
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modsig {int pkcs7_msg; } ;


 int kfree (struct modsig*) ;
 int pkcs7_free_message (int ) ;

void ima_free_modsig(struct modsig *modsig)
{
 if (!modsig)
  return;

 pkcs7_free_message(modsig->pkcs7_msg);
 kfree(modsig);
}
