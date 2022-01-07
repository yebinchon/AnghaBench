
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LLC_NOP_NAME ;
 int llc_nop_ops ;
 int nfc_llc_register (int ,int *) ;

int nfc_llc_nop_register(void)
{
 return nfc_llc_register(LLC_NOP_NAME, &llc_nop_ops);
}
