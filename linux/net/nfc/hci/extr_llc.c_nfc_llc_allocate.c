
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmit_to_drv_t ;
struct nfc_llc_engine {TYPE_1__* ops; } ;
struct nfc_llc {TYPE_1__* ops; int * data; int rx_tailroom; int rx_headroom; } ;
struct nfc_hci_dev {int dummy; } ;
typedef int rcv_to_hci_t ;
typedef int llc_failure_t ;
struct TYPE_2__ {int * (* init ) (struct nfc_hci_dev*,int ,int ,int,int,int *,int *,int ) ;} ;


 int GFP_KERNEL ;
 int kfree (struct nfc_llc*) ;
 struct nfc_llc* kzalloc (int,int ) ;
 struct nfc_llc_engine* nfc_llc_name_to_engine (char const*) ;
 int * stub1 (struct nfc_hci_dev*,int ,int ,int,int,int *,int *,int ) ;

struct nfc_llc *nfc_llc_allocate(const char *name, struct nfc_hci_dev *hdev,
     xmit_to_drv_t xmit_to_drv,
     rcv_to_hci_t rcv_to_hci, int tx_headroom,
     int tx_tailroom, llc_failure_t llc_failure)
{
 struct nfc_llc_engine *llc_engine;
 struct nfc_llc *llc;

 llc_engine = nfc_llc_name_to_engine(name);
 if (llc_engine == ((void*)0))
  return ((void*)0);

 llc = kzalloc(sizeof(struct nfc_llc), GFP_KERNEL);
 if (llc == ((void*)0))
  return ((void*)0);

 llc->data = llc_engine->ops->init(hdev, xmit_to_drv, rcv_to_hci,
       tx_headroom, tx_tailroom,
       &llc->rx_headroom, &llc->rx_tailroom,
       llc_failure);
 if (llc->data == ((void*)0)) {
  kfree(llc);
  return ((void*)0);
 }
 llc->ops = llc_engine->ops;

 return llc;
}
