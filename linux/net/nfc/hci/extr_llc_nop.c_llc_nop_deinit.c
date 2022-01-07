
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llc {int dummy; } ;


 int kfree (int ) ;
 int nfc_llc_get_data (struct nfc_llc*) ;

__attribute__((used)) static void llc_nop_deinit(struct nfc_llc *llc)
{
 kfree(nfc_llc_get_data(llc));
}
