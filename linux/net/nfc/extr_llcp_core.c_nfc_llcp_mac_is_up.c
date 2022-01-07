
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct nfc_llcp_local {int remote_lto; int link_timer; int tx_work; scalar_t__ rf_mode; scalar_t__ comm_mode; int target_idx; } ;
struct nfc_dev {int dummy; } ;


 scalar_t__ NFC_RF_INITIATOR ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct nfc_llcp_local* nfc_llcp_find_local (struct nfc_dev*) ;
 int pr_debug (char*,...) ;
 int schedule_work (int *) ;

void nfc_llcp_mac_is_up(struct nfc_dev *dev, u32 target_idx,
   u8 comm_mode, u8 rf_mode)
{
 struct nfc_llcp_local *local;

 pr_debug("rf mode %d\n", rf_mode);

 local = nfc_llcp_find_local(dev);
 if (local == ((void*)0))
  return;

 local->target_idx = target_idx;
 local->comm_mode = comm_mode;
 local->rf_mode = rf_mode;

 if (rf_mode == NFC_RF_INITIATOR) {
  pr_debug("Queueing Tx work\n");

  schedule_work(&local->tx_work);
 } else {
  mod_timer(&local->link_timer,
     jiffies + msecs_to_jiffies(local->remote_lto));
 }
}
