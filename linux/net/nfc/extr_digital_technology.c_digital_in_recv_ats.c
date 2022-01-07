
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; int * data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {scalar_t__ curr_nfc_dep_pni; int target_fsc; } ;


 int DIGITAL_ATS_FSCI (int ) ;
 int DIGITAL_ATS_MAX_FSC ;
 int EIO ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_PROTO_ISO14443 ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int * digital_ats_fsc ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_target_found (struct nfc_digital_dev*,struct nfc_target*,int ) ;
 int kfree (struct nfc_target*) ;

__attribute__((used)) static void digital_in_recv_ats(struct nfc_digital_dev *ddev, void *arg,
    struct sk_buff *resp)
{
 struct nfc_target *target = arg;
 u8 fsdi;
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (resp->len < 2) {
  rc = -EIO;
  goto exit;
 }

 fsdi = DIGITAL_ATS_FSCI(resp->data[1]);
 if (fsdi >= 8)
  ddev->target_fsc = DIGITAL_ATS_MAX_FSC;
 else
  ddev->target_fsc = digital_ats_fsc[fsdi];

 ddev->curr_nfc_dep_pni = 0;

 rc = digital_target_found(ddev, target, NFC_PROTO_ISO14443);

exit:
 dev_kfree_skb(resp);
 kfree(target);

 if (rc)
  digital_poll_next_tech(ddev);
}
