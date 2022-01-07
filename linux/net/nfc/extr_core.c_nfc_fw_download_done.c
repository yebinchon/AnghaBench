
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfc_dev {int fw_download_in_progress; } ;


 int nfc_genl_fw_download_done (struct nfc_dev*,char const*,int ) ;

int nfc_fw_download_done(struct nfc_dev *dev, const char *firmware_name,
    u32 result)
{
 dev->fw_download_in_progress = 0;

 return nfc_genl_fw_download_done(dev, firmware_name, result);
}
