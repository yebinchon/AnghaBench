
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
typedef int nfc_digital_cmd_complete_t ;


 int DIGITAL_CMD_TG_SEND ;
 int digital_send_cmd (struct nfc_digital_dev*,int ,struct sk_buff*,int *,int ,int ,void*) ;

__attribute__((used)) static inline int digital_tg_send_cmd(struct nfc_digital_dev *ddev,
   struct sk_buff *skb, u16 timeout,
   nfc_digital_cmd_complete_t cmd_cb, void *cb_context)
{
 return digital_send_cmd(ddev, DIGITAL_CMD_TG_SEND, skb, ((void*)0), timeout,
    cmd_cb, cb_context);
}
