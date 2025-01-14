
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oob_data {int present; int rand256; int hash256; int rand192; int hash192; int list; int bdaddr_type; int bdaddr; } ;
struct hci_dev {int name; int remote_oob_data; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int ,int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bacpy (int *,int *) ;
 struct oob_data* hci_find_remote_oob_data (struct hci_dev*,int *,int ) ;
 struct oob_data* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;

int hci_add_remote_oob_data(struct hci_dev *hdev, bdaddr_t *bdaddr,
       u8 bdaddr_type, u8 *hash192, u8 *rand192,
       u8 *hash256, u8 *rand256)
{
 struct oob_data *data;

 data = hci_find_remote_oob_data(hdev, bdaddr, bdaddr_type);
 if (!data) {
  data = kmalloc(sizeof(*data), GFP_KERNEL);
  if (!data)
   return -ENOMEM;

  bacpy(&data->bdaddr, bdaddr);
  data->bdaddr_type = bdaddr_type;
  list_add(&data->list, &hdev->remote_oob_data);
 }

 if (hash192 && rand192) {
  memcpy(data->hash192, hash192, sizeof(data->hash192));
  memcpy(data->rand192, rand192, sizeof(data->rand192));
  if (hash256 && rand256)
   data->present = 0x03;
 } else {
  memset(data->hash192, 0, sizeof(data->hash192));
  memset(data->rand192, 0, sizeof(data->rand192));
  if (hash256 && rand256)
   data->present = 0x02;
  else
   data->present = 0x00;
 }

 if (hash256 && rand256) {
  memcpy(data->hash256, hash256, sizeof(data->hash256));
  memcpy(data->rand256, rand256, sizeof(data->rand256));
 } else {
  memset(data->hash256, 0, sizeof(data->hash256));
  memset(data->rand256, 0, sizeof(data->rand256));
  if (hash192 && rand192)
   data->present = 0x01;
 }

 BT_DBG("%s for %pMR", hdev->name, bdaddr);

 return 0;
}
