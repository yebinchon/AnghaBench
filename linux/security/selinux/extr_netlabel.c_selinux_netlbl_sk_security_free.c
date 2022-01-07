
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_security_struct {int * nlbl_secattr; } ;


 int netlbl_secattr_free (int *) ;

void selinux_netlbl_sk_security_free(struct sk_security_struct *sksec)
{
 if (sksec->nlbl_secattr != ((void*)0))
  netlbl_secattr_free(sksec->nlbl_secattr);
}
