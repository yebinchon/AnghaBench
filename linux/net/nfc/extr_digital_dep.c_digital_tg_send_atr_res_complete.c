
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__* data; } ;
struct nfc_digital_dev {scalar_t__ atn_count; } ;


 scalar_t__ DIGITAL_CMD_PSL_REQ ;
 scalar_t__ DIGITAL_NFC_DEP_NFCA_SOD_SB ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int digital_poll_next_tech (struct nfc_digital_dev*) ;
 int digital_tg_recv_dep_req (struct nfc_digital_dev*,void*,struct sk_buff*) ;
 int digital_tg_recv_psl_req (struct nfc_digital_dev*,void*,struct sk_buff*) ;

__attribute__((used)) static void digital_tg_send_atr_res_complete(struct nfc_digital_dev *ddev,
          void *arg, struct sk_buff *resp)
{
 int offset;

 if (IS_ERR(resp)) {
  digital_poll_next_tech(ddev);
  return;
 }

 offset = 2;
 if (resp->data[0] == DIGITAL_NFC_DEP_NFCA_SOD_SB)
  offset++;

 ddev->atn_count = 0;

 if (resp->data[offset] == DIGITAL_CMD_PSL_REQ)
  digital_tg_recv_psl_req(ddev, arg, resp);
 else
  digital_tg_recv_dep_req(ddev, arg, resp);
}
