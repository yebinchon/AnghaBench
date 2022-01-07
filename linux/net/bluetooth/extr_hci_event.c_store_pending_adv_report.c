
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct discovery_state {void* last_adv_data_len; int last_adv_data; int last_adv_flags; int last_adv_rssi; void* last_adv_addr_type; int last_adv_addr; } ;
struct hci_dev {struct discovery_state discovery; } ;
typedef int s8 ;
typedef int bdaddr_t ;


 int bacpy (int *,int *) ;
 int memcpy (int ,void**,void*) ;

__attribute__((used)) static void store_pending_adv_report(struct hci_dev *hdev, bdaddr_t *bdaddr,
         u8 bdaddr_type, s8 rssi, u32 flags,
         u8 *data, u8 len)
{
 struct discovery_state *d = &hdev->discovery;

 bacpy(&d->last_adv_addr, bdaddr);
 d->last_adv_addr_type = bdaddr_type;
 d->last_adv_rssi = rssi;
 d->last_adv_flags = flags;
 memcpy(d->last_adv_data, data, len);
 d->last_adv_data_len = len;
}
