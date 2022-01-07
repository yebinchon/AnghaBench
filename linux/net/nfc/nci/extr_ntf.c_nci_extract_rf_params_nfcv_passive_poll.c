
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rf_tech_specific_params_nfcv_poll {int uid; int dsfid; } ;
struct nci_dev {int dummy; } ;
typedef int __u8 ;


 int NFC_ISO15693_UID_MAXSIZE ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static __u8 *nci_extract_rf_params_nfcv_passive_poll(struct nci_dev *ndev,
   struct rf_tech_specific_params_nfcv_poll *nfcv_poll,
           __u8 *data)
{
 ++data;
 nfcv_poll->dsfid = *data++;
 memcpy(nfcv_poll->uid, data, NFC_ISO15693_UID_MAXSIZE);
 data += NFC_ISO15693_UID_MAXSIZE;
 return data;
}
