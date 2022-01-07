
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_llc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* deinit ) (struct nfc_llc*) ;} ;


 int kfree (struct nfc_llc*) ;
 int stub1 (struct nfc_llc*) ;

void nfc_llc_free(struct nfc_llc *llc)
{
 llc->ops->deinit(llc);
 kfree(llc);
}
