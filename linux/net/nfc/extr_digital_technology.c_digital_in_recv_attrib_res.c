
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_attrib_res {int mbli_did; } ;


 int EIO ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NFC_PROTO_ISO14443_B ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_target_found (struct nfc_digital_dev*,struct nfc_target*,int ) ;
 int kfree (struct nfc_target*) ;

__attribute__((used)) static void digital_in_recv_attrib_res(struct nfc_digital_dev *ddev, void *arg,
           struct sk_buff *resp)
{
 struct nfc_target *target = arg;
 struct digital_attrib_res *attrib_res;
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (resp->len < sizeof(*attrib_res)) {
  PROTOCOL_ERR("12.6.2");
  rc = -EIO;
  goto exit;
 }

 attrib_res = (struct digital_attrib_res *)resp->data;

 if (attrib_res->mbli_did & 0x0f) {
  PROTOCOL_ERR("12.6.2.1");
  rc = -EIO;
  goto exit;
 }

 rc = digital_target_found(ddev, target, NFC_PROTO_ISO14443_B);

exit:
 dev_kfree_skb(resp);
 kfree(target);

 if (rc)
  digital_poll_next_tech(ddev);
}
