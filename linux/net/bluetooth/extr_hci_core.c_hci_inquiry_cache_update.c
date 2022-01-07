
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ rssi; int ssp_mode; } ;
struct inquiry_entry {scalar_t__ name_state; void* timestamp; TYPE_1__ data; int list; int all; } ;
struct inquiry_data {scalar_t__ rssi; int bdaddr; int ssp_mode; } ;
struct discovery_state {void* timestamp; int unknown; int all; } ;
struct hci_dev {struct discovery_state discovery; } ;


 int BDADDR_BREDR ;
 int BT_DBG (char*,struct discovery_state*,int *) ;
 int GFP_KERNEL ;
 int MGMT_DEV_FOUND_CONFIRM_NAME ;
 int MGMT_DEV_FOUND_LEGACY_PAIRING ;
 scalar_t__ NAME_KNOWN ;
 scalar_t__ NAME_NEEDED ;
 scalar_t__ NAME_NOT_KNOWN ;
 scalar_t__ NAME_PENDING ;
 struct inquiry_entry* hci_inquiry_cache_lookup (struct hci_dev*,int *) ;
 int hci_inquiry_cache_update_resolve (struct hci_dev*,struct inquiry_entry*) ;
 int hci_remove_remote_oob_data (struct hci_dev*,int *,int ) ;
 void* jiffies ;
 struct inquiry_entry* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int memcpy (TYPE_1__*,struct inquiry_data*,int) ;

u32 hci_inquiry_cache_update(struct hci_dev *hdev, struct inquiry_data *data,
        bool name_known)
{
 struct discovery_state *cache = &hdev->discovery;
 struct inquiry_entry *ie;
 u32 flags = 0;

 BT_DBG("cache %p, %pMR", cache, &data->bdaddr);

 hci_remove_remote_oob_data(hdev, &data->bdaddr, BDADDR_BREDR);

 if (!data->ssp_mode)
  flags |= MGMT_DEV_FOUND_LEGACY_PAIRING;

 ie = hci_inquiry_cache_lookup(hdev, &data->bdaddr);
 if (ie) {
  if (!ie->data.ssp_mode)
   flags |= MGMT_DEV_FOUND_LEGACY_PAIRING;

  if (ie->name_state == NAME_NEEDED &&
      data->rssi != ie->data.rssi) {
   ie->data.rssi = data->rssi;
   hci_inquiry_cache_update_resolve(hdev, ie);
  }

  goto update;
 }


 ie = kzalloc(sizeof(*ie), GFP_KERNEL);
 if (!ie) {
  flags |= MGMT_DEV_FOUND_CONFIRM_NAME;
  goto done;
 }

 list_add(&ie->all, &cache->all);

 if (name_known) {
  ie->name_state = NAME_KNOWN;
 } else {
  ie->name_state = NAME_NOT_KNOWN;
  list_add(&ie->list, &cache->unknown);
 }

update:
 if (name_known && ie->name_state != NAME_KNOWN &&
     ie->name_state != NAME_PENDING) {
  ie->name_state = NAME_KNOWN;
  list_del(&ie->list);
 }

 memcpy(&ie->data, data, sizeof(*data));
 ie->timestamp = jiffies;
 cache->timestamp = jiffies;

 if (ie->name_state == NAME_NOT_KNOWN)
  flags |= MGMT_DEV_FOUND_CONFIRM_NAME;

done:
 return flags;
}
