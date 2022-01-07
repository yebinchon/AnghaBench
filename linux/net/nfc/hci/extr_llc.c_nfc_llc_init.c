
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfc_llc_exit () ;
 int nfc_llc_nop_register () ;
 int nfc_llc_shdlc_register () ;

int nfc_llc_init(void)
{
 int r;

 r = nfc_llc_nop_register();
 if (r)
  goto exit;

 r = nfc_llc_shdlc_register();
 if (r)
  goto exit;

 return 0;

exit:
 nfc_llc_exit();
 return r;
}
