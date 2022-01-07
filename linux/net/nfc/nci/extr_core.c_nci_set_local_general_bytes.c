
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_dev {int dummy; } ;
struct nci_set_config_param {scalar_t__ len; int id; int * val; } ;
struct nci_dev {int dummy; } ;


 int EINVAL ;
 int NCI_LN_ATR_RES_GEN_BYTES ;
 int NCI_PN_ATR_REQ_GEN_BYTES ;
 int NCI_SET_CONFIG_TIMEOUT ;
 scalar_t__ NFC_MAX_GT_LEN ;
 int msecs_to_jiffies (int ) ;
 int nci_request (struct nci_dev*,int ,unsigned long,int ) ;
 int nci_set_config_req ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int * nfc_get_local_general_bytes (struct nfc_dev*,scalar_t__*) ;

__attribute__((used)) static int nci_set_local_general_bytes(struct nfc_dev *nfc_dev)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);
 struct nci_set_config_param param;
 int rc;

 param.val = nfc_get_local_general_bytes(nfc_dev, &param.len);
 if ((param.val == ((void*)0)) || (param.len == 0))
  return 0;

 if (param.len > NFC_MAX_GT_LEN)
  return -EINVAL;

 param.id = NCI_PN_ATR_REQ_GEN_BYTES;

 rc = nci_request(ndev, nci_set_config_req, (unsigned long)&param,
    msecs_to_jiffies(NCI_SET_CONFIG_TIMEOUT));
 if (rc)
  return rc;

 param.id = NCI_LN_ATR_RES_GEN_BYTES;

 return nci_request(ndev, nci_set_config_req, (unsigned long)&param,
      msecs_to_jiffies(NCI_SET_CONFIG_TIMEOUT));
}
