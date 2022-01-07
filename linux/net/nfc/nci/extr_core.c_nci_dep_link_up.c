
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_target {int idx; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int remote_gb_len; int remote_gb; } ;
typedef int __u8 ;


 int NFC_COMM_PASSIVE ;
 int NFC_PROTO_NFC_DEP ;
 int NFC_RF_INITIATOR ;
 int nci_activate_target (struct nfc_dev*,struct nfc_target*,int ) ;
 int nfc_dep_link_is_up (struct nfc_dev*,int ,int ,int ) ;
 struct nci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_set_remote_general_bytes (struct nfc_dev*,int ,int ) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int nci_dep_link_up(struct nfc_dev *nfc_dev, struct nfc_target *target,
      __u8 comm_mode, __u8 *gb, size_t gb_len)
{
 struct nci_dev *ndev = nfc_get_drvdata(nfc_dev);
 int rc;

 pr_debug("target_idx %d, comm_mode %d\n", target->idx, comm_mode);

 rc = nci_activate_target(nfc_dev, target, NFC_PROTO_NFC_DEP);
 if (rc)
  return rc;

 rc = nfc_set_remote_general_bytes(nfc_dev, ndev->remote_gb,
       ndev->remote_gb_len);
 if (!rc)
  rc = nfc_dep_link_is_up(nfc_dev, target->idx, NFC_COMM_PASSIVE,
     NFC_RF_INITIATOR);

 return rc;
}
