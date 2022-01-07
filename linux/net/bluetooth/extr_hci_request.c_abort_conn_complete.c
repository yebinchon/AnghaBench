
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*,scalar_t__) ;

__attribute__((used)) static void abort_conn_complete(struct hci_dev *hdev, u8 status, u16 opcode)
{
 if (status)
  BT_DBG("Failed to abort connection: status 0x%2.2x", status);
}
