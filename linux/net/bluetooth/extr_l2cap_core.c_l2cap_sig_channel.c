
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int * data; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_cmd_rej_unk {int reason; } ;
struct l2cap_cmd_hdr {int ident; int code; int len; } ;
struct hci_conn {scalar_t__ type; } ;
typedef int rej ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,...) ;
 int BT_ERR (char*,int) ;
 int L2CAP_CMD_HDR_SIZE ;
 int L2CAP_COMMAND_REJ ;
 int L2CAP_REJ_NOT_UNDERSTOOD ;
 int cpu_to_le16 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_bredr_sig_cmd (struct l2cap_conn*,struct l2cap_cmd_hdr*,int,int *) ;
 int l2cap_raw_recv (struct l2cap_conn*,struct sk_buff*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_cmd_rej_unk*) ;
 int le16_to_cpu (int ) ;
 int memcpy (struct l2cap_cmd_hdr*,int *,int) ;

__attribute__((used)) static inline void l2cap_sig_channel(struct l2cap_conn *conn,
         struct sk_buff *skb)
{
 struct hci_conn *hcon = conn->hcon;
 u8 *data = skb->data;
 int len = skb->len;
 struct l2cap_cmd_hdr cmd;
 int err;

 l2cap_raw_recv(conn, skb);

 if (hcon->type != ACL_LINK)
  goto drop;

 while (len >= L2CAP_CMD_HDR_SIZE) {
  u16 cmd_len;
  memcpy(&cmd, data, L2CAP_CMD_HDR_SIZE);
  data += L2CAP_CMD_HDR_SIZE;
  len -= L2CAP_CMD_HDR_SIZE;

  cmd_len = le16_to_cpu(cmd.len);

  BT_DBG("code 0x%2.2x len %d id 0x%2.2x", cmd.code, cmd_len,
         cmd.ident);

  if (cmd_len > len || !cmd.ident) {
   BT_DBG("corrupted command");
   break;
  }

  err = l2cap_bredr_sig_cmd(conn, &cmd, cmd_len, data);
  if (err) {
   struct l2cap_cmd_rej_unk rej;

   BT_ERR("Wrong link type (%d)", err);

   rej.reason = cpu_to_le16(L2CAP_REJ_NOT_UNDERSTOOD);
   l2cap_send_cmd(conn, cmd.ident, L2CAP_COMMAND_REJ,
           sizeof(rej), &rej);
  }

  data += cmd_len;
  len -= cmd_len;
 }

drop:
 kfree_skb(skb);
}
