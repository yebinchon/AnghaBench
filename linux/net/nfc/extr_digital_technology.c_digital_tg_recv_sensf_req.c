
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sensf_req {scalar_t__ cmd; } ;


 scalar_t__ DIGITAL_CMD_SENSF_REQ ;
 int DIGITAL_DRV_CAPS_TG_CRC (struct nfc_digital_dev*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PROTOCOL_ERR (char*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_skb_check_crc_f (struct sk_buff*) ;
 int digital_tg_send_sensf_res (struct nfc_digital_dev*,struct digital_sensf_req*) ;
 int skb_pull (struct sk_buff*,int) ;

void digital_tg_recv_sensf_req(struct nfc_digital_dev *ddev, void *arg,
          struct sk_buff *resp)
{
 struct digital_sensf_req *sensf_req;
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 if (!DIGITAL_DRV_CAPS_TG_CRC(ddev)) {
  rc = digital_skb_check_crc_f(resp);
  if (rc) {
   PROTOCOL_ERR("6.4.1.8");
   goto exit;
  }
 }

 if (resp->len != sizeof(struct digital_sensf_req) + 1) {
  rc = -EINVAL;
  goto exit;
 }

 skb_pull(resp, 1);
 sensf_req = (struct digital_sensf_req *)resp->data;

 if (sensf_req->cmd != DIGITAL_CMD_SENSF_REQ) {
  rc = -EINVAL;
  goto exit;
 }

 rc = digital_tg_send_sensf_res(ddev, sensf_req);

exit:
 if (rc)
  digital_poll_next_tech(ddev);

 dev_kfree_skb(resp);
}
