
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_dev {int dev; } ;


 int dev_name (int *) ;
 int * nfc_llcp_general_bytes (struct nfc_dev*,size_t*) ;
 int pr_debug (char*,int ) ;

u8 *nfc_get_local_general_bytes(struct nfc_dev *dev, size_t *gb_len)
{
 pr_debug("dev_name=%s\n", dev_name(&dev->dev));

 return nfc_llcp_general_bytes(dev, gb_len);
}
