
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_local {int dummy; } ;
struct nfc_dev {int dummy; } ;


 int local_cleanup (struct nfc_llcp_local*) ;
 struct nfc_llcp_local* nfc_llcp_find_local (struct nfc_dev*) ;
 int nfc_llcp_local_put (struct nfc_llcp_local*) ;
 int pr_debug (char*) ;

void nfc_llcp_unregister_device(struct nfc_dev *dev)
{
 struct nfc_llcp_local *local = nfc_llcp_find_local(dev);

 if (local == ((void*)0)) {
  pr_debug("No such device\n");
  return;
 }

 local_cleanup(local);

 nfc_llcp_local_put(local);
}
