
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__* data; int len; } ;
struct nfc_digital_dev {int dummy; } ;


 scalar_t__ DIGITAL_CMD_ALL_REQ ;
 scalar_t__ DIGITAL_CMD_SENS_REQ ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_tg_send_sens_res (struct nfc_digital_dev*) ;

void digital_tg_recv_sens_req(struct nfc_digital_dev *ddev, void *arg,
         struct sk_buff *resp)
{
 u8 sens_req;
 int rc;

 if (IS_ERR(resp)) {
  rc = PTR_ERR(resp);
  resp = ((void*)0);
  goto exit;
 }

 sens_req = resp->data[0];

 if (!resp->len || (sens_req != DIGITAL_CMD_SENS_REQ &&
     sens_req != DIGITAL_CMD_ALL_REQ)) {
  rc = -EINVAL;
  goto exit;
 }

 rc = digital_tg_send_sens_res(ddev);

exit:
 if (rc)
  digital_poll_next_tech(ddev);

 dev_kfree_skb(resp);
}
