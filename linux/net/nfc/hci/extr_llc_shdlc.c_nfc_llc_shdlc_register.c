
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LLC_SHDLC_NAME ;
 int llc_shdlc_ops ;
 int nfc_llc_register (int ,int *) ;

int nfc_llc_shdlc_register(void)
{
 return nfc_llc_register(LLC_SHDLC_NAME, &llc_shdlc_ops);
}
