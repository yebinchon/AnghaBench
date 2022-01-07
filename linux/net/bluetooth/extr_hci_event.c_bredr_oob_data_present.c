
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oob_data {int present; int hash192; int rand192; int hash256; int rand256; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int dst; struct hci_dev* hdev; } ;


 int BDADDR_BREDR ;
 int HCI_SC_ONLY ;
 int ZERO_KEY ;
 scalar_t__ bredr_sc_enabled (struct hci_dev*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 struct oob_data* hci_find_remote_oob_data (struct hci_dev*,int *,int ) ;
 int memcmp (int ,int ,int) ;

__attribute__((used)) static u8 bredr_oob_data_present(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;
 struct oob_data *data;

 data = hci_find_remote_oob_data(hdev, &conn->dst, BDADDR_BREDR);
 if (!data)
  return 0x00;

 if (bredr_sc_enabled(hdev)) {






  if (!hci_dev_test_flag(hdev, HCI_SC_ONLY))
   return data->present;






  if (!memcmp(data->rand256, ZERO_KEY, 16) ||
      !memcmp(data->hash256, ZERO_KEY, 16))
   return 0x00;

  return 0x02;
 }





 if (!memcmp(data->rand192, ZERO_KEY, 16) ||
     !memcmp(data->hash192, ZERO_KEY, 16))
  return 0x00;

 return 0x01;
}
