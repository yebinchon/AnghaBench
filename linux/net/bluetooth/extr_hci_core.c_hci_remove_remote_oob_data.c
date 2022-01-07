
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oob_data {int list; } ;
struct hci_dev {int name; } ;
typedef int bdaddr_t ;


 int BT_DBG (char*,int ,int *,int ) ;
 int ENOENT ;
 struct oob_data* hci_find_remote_oob_data (struct hci_dev*,int *,int ) ;
 int kfree (struct oob_data*) ;
 int list_del (int *) ;

int hci_remove_remote_oob_data(struct hci_dev *hdev, bdaddr_t *bdaddr,
          u8 bdaddr_type)
{
 struct oob_data *data;

 data = hci_find_remote_oob_data(hdev, bdaddr, bdaddr_type);
 if (!data)
  return -ENOENT;

 BT_DBG("%s removing %pMR (%u)", hdev->name, bdaddr, bdaddr_type);

 list_del(&data->list);
 kfree(data);

 return 0;
}
