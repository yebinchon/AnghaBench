
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_dev {int dev; } ;


 int dev_name (int *) ;
 int nfc_llcp_set_remote_gb (struct nfc_dev*,int *,int ) ;
 int pr_debug (char*,int ,int ) ;

int nfc_set_remote_general_bytes(struct nfc_dev *dev, u8 *gb, u8 gb_len)
{
 pr_debug("dev_name=%s gb_len=%d\n", dev_name(&dev->dev), gb_len);

 return nfc_llcp_set_remote_gb(dev, gb, gb_len);
}
