
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nfc_dev {int polling; int dev; int rf_mode; } ;


 scalar_t__ NFC_PROTO_NFC_DEP_MASK ;
 int NFC_RF_TARGET ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int nfc_dep_link_is_up (struct nfc_dev*,int ,int ,int ) ;
 int nfc_genl_tm_activated (struct nfc_dev*,scalar_t__) ;
 int nfc_set_remote_general_bytes (struct nfc_dev*,int *,size_t) ;

int nfc_tm_activated(struct nfc_dev *dev, u32 protocol, u8 comm_mode,
       u8 *gb, size_t gb_len)
{
 int rc;

 device_lock(&dev->dev);

 dev->polling = 0;

 if (gb != ((void*)0)) {
  rc = nfc_set_remote_general_bytes(dev, gb, gb_len);
  if (rc < 0)
   goto out;
 }

 dev->rf_mode = NFC_RF_TARGET;

 if (protocol == NFC_PROTO_NFC_DEP_MASK)
  nfc_dep_link_is_up(dev, 0, comm_mode, NFC_RF_TARGET);

 rc = nfc_genl_tm_activated(dev, protocol);

out:
 device_unlock(&dev->dev);

 return rc;
}
