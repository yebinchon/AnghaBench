
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__* data; } ;
struct nfc_digital_dev {int dummy; } ;


 scalar_t__ DIGITAL_CMD_SENSF_REQ ;
 int IS_ERR (struct sk_buff*) ;
 int digital_tg_recv_atr_req (struct nfc_digital_dev*,void*,struct sk_buff*) ;
 int digital_tg_recv_sensf_req (struct nfc_digital_dev*,void*,struct sk_buff*) ;

__attribute__((used)) static void digital_tg_recv_atr_or_sensf_req(struct nfc_digital_dev *ddev,
  void *arg, struct sk_buff *resp)
{
 if (!IS_ERR(resp) && (resp->len >= 2) &&
   (resp->data[1] == DIGITAL_CMD_SENSF_REQ))
  digital_tg_recv_sensf_req(ddev, arg, resp);
 else
  digital_tg_recv_atr_req(ddev, arg, resp);

 return;
}
