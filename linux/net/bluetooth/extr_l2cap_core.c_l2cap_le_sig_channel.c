
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_cmd_rej_unk {int reason; } ;
struct l2cap_cmd_hdr {int ident; int code; int len; } ;
struct hci_conn {scalar_t__ type; } ;
typedef int rej ;


 int BT_DBG (char*,...) ;
 int BT_ERR (char*,int) ;
 scalar_t__ L2CAP_CMD_HDR_SIZE ;
 int L2CAP_COMMAND_REJ ;
 int L2CAP_REJ_NOT_UNDERSTOOD ;
 scalar_t__ LE_LINK ;
 int cpu_to_le16 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_le_sig_cmd (struct l2cap_conn*,struct l2cap_cmd_hdr*,scalar_t__,scalar_t__) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_cmd_rej_unk*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static inline void l2cap_le_sig_channel(struct l2cap_conn *conn,
     struct sk_buff *skb)
{
 struct hci_conn *hcon = conn->hcon;
 struct l2cap_cmd_hdr *cmd;
 u16 len;
 int err;

 if (hcon->type != LE_LINK)
  goto drop;

 if (skb->len < L2CAP_CMD_HDR_SIZE)
  goto drop;

 cmd = (void *) skb->data;
 skb_pull(skb, L2CAP_CMD_HDR_SIZE);

 len = le16_to_cpu(cmd->len);

 BT_DBG("code 0x%2.2x len %d id 0x%2.2x", cmd->code, len, cmd->ident);

 if (len != skb->len || !cmd->ident) {
  BT_DBG("corrupted command");
  goto drop;
 }

 err = l2cap_le_sig_cmd(conn, cmd, len, skb->data);
 if (err) {
  struct l2cap_cmd_rej_unk rej;

  BT_ERR("Wrong link type (%d)", err);

  rej.reason = cpu_to_le16(L2CAP_REJ_NOT_UNDERSTOOD);
  l2cap_send_cmd(conn, cmd->ident, L2CAP_COMMAND_REJ,
          sizeof(rej), &rej);
 }

drop:
 kfree_skb(skb);
}
