
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int target_fsc; } ;
struct digital_sensb_res {scalar_t__ cmd; int* proto_info; } ;


 int BIT (int) ;
 int DIGITAL_ATS_MAX_FSC ;
 scalar_t__ DIGITAL_CMD_SENSB_RES ;
 int DIGITAL_SENSB_FSCI (int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int * digital_ats_fsc ;
 int digital_in_send_attrib_req (struct nfc_digital_dev*,struct nfc_target*,struct digital_sensb_res*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int kfree (struct nfc_target*) ;
 struct nfc_target* kzalloc (int,int ) ;

__attribute__((used)) static void digital_in_recv_sensb_res(struct nfc_digital_dev *ddev, void *arg,
          struct sk_buff *resp)
{
 struct nfc_target *target = ((void*)0);
 struct digital_sensb_res *sensb_res;
 u8 fsci;
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (resp->len != sizeof(*sensb_res)) {
  PROTOCOL_ERR("5.6.2.1");
  rc = -EIO;
  goto exit;
 }

 sensb_res = (struct digital_sensb_res *)resp->data;

 if (sensb_res->cmd != DIGITAL_CMD_SENSB_RES) {
  PROTOCOL_ERR("5.6.2");
  rc = -EIO;
  goto exit;
 }

 if (!(sensb_res->proto_info[1] & BIT(0))) {
  PROTOCOL_ERR("5.6.2.12");
  rc = -EIO;
  goto exit;
 }

 if (sensb_res->proto_info[1] & BIT(3)) {
  PROTOCOL_ERR("5.6.2.16");
  rc = -EIO;
  goto exit;
 }

 fsci = DIGITAL_SENSB_FSCI(sensb_res->proto_info[1]);
 if (fsci >= 8)
  ddev->target_fsc = DIGITAL_ATS_MAX_FSC;
 else
  ddev->target_fsc = digital_ats_fsc[fsci];

 target = kzalloc(sizeof(struct nfc_target), GFP_KERNEL);
 if (!target) {
  rc = -ENOMEM;
  goto exit;
 }

 rc = digital_in_send_attrib_req(ddev, target, sensb_res);

exit:
 dev_kfree_skb(resp);

 if (rc) {
  kfree(target);
  digital_poll_next_tech(ddev);
 }
}
