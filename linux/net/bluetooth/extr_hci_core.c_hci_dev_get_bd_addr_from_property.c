
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int parent; } ;
struct hci_dev {int public_addr; TYPE_1__ dev; } ;
struct fwnode_handle {int dummy; } ;
typedef int bdaddr_t ;
typedef int ba ;


 int BDADDR_ANY ;
 int bacmp (int *,int ) ;
 int bacpy (int *,int *) ;
 struct fwnode_handle* dev_fwnode (int ) ;
 int fwnode_property_read_u8_array (struct fwnode_handle*,char*,int *,int) ;

__attribute__((used)) static void hci_dev_get_bd_addr_from_property(struct hci_dev *hdev)
{
 struct fwnode_handle *fwnode = dev_fwnode(hdev->dev.parent);
 bdaddr_t ba;
 int ret;

 ret = fwnode_property_read_u8_array(fwnode, "local-bd-address",
         (u8 *)&ba, sizeof(ba));
 if (ret < 0 || !bacmp(&ba, BDADDR_ANY))
  return;

 bacpy(&hdev->public_addr, &ba);
}
