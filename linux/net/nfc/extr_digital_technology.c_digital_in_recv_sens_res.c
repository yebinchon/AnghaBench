
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int sens_res; } ;
struct nfc_digital_dev {int dummy; } ;
typedef int __le16 ;


 scalar_t__ DIGITAL_SENS_RES_IS_T1T (int ) ;
 int DIGITAL_SENS_RES_IS_VALID (int ) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_PROTO_JEWEL ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int __le16_to_cpu (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_in_send_sdd_req (struct nfc_digital_dev*,struct nfc_target*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_target_found (struct nfc_digital_dev*,struct nfc_target*,int ) ;
 int kfree (struct nfc_target*) ;
 struct nfc_target* kzalloc (int,int ) ;

__attribute__((used)) static void digital_in_recv_sens_res(struct nfc_digital_dev *ddev, void *arg,
         struct sk_buff *resp)
{
 struct nfc_target *target = ((void*)0);
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (resp->len < sizeof(u16)) {
  rc = -EIO;
  goto exit;
 }

 target = kzalloc(sizeof(struct nfc_target), GFP_KERNEL);
 if (!target) {
  rc = -ENOMEM;
  goto exit;
 }

 target->sens_res = __le16_to_cpu(*(__le16 *)resp->data);

 if (!DIGITAL_SENS_RES_IS_VALID(target->sens_res)) {
  PROTOCOL_ERR("4.6.3.3");
  rc = -EINVAL;
  goto exit;
 }

 if (DIGITAL_SENS_RES_IS_T1T(target->sens_res))
  rc = digital_target_found(ddev, target, NFC_PROTO_JEWEL);
 else
  rc = digital_in_send_sdd_req(ddev, target);

exit:
 dev_kfree_skb(resp);

 if (rc) {
  kfree(target);
  digital_poll_next_tech(ddev);
 }
}
