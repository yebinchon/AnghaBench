
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_chan {int allow_cmd; } ;
struct sk_buff {int len; int* data; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_chan {struct smp_chan* data; struct l2cap_conn* conn; } ;
struct hci_conn {int dst; int hdev; } ;
typedef int code ;
typedef int __u8 ;


 int BT_DBG (char*,int) ;
 int EILSEQ ;
 int EPERM ;
 int HCI_LE_ENABLED ;






 int SMP_CMD_MAX ;
 int SMP_CMD_NOTSUPP ;
 int SMP_PAIRING_NOTSUPP ;
 int bt_dev_err (int ,char*,int,int *) ;
 int hci_dev_test_flag (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int smp_cmd_dhkey_check (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_encrypt_info (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_ident_addr_info (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_ident_info (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_keypress_notify (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_master_ident (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_pairing_confirm (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_pairing_random (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_pairing_req (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_pairing_rsp (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_public_key (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_security_req (struct l2cap_conn*,struct sk_buff*) ;
 int smp_cmd_sign_info (struct l2cap_conn*,struct sk_buff*) ;
 int smp_failure (struct l2cap_conn*,int) ;
 int test_and_clear_bit (int,int *) ;

__attribute__((used)) static int smp_sig_channel(struct l2cap_chan *chan, struct sk_buff *skb)
{
 struct l2cap_conn *conn = chan->conn;
 struct hci_conn *hcon = conn->hcon;
 struct smp_chan *smp;
 __u8 code, reason;
 int err = 0;

 if (skb->len < 1)
  return -EILSEQ;

 if (!hci_dev_test_flag(hcon->hdev, HCI_LE_ENABLED)) {
  reason = SMP_PAIRING_NOTSUPP;
  goto done;
 }

 code = skb->data[0];
 skb_pull(skb, sizeof(code));

 smp = chan->data;

 if (code > SMP_CMD_MAX)
  goto drop;

 if (smp && !test_and_clear_bit(code, &smp->allow_cmd))
  goto drop;




 if (!smp && code != 132 && code != 129)
  goto drop;

 switch (code) {
 case 132:
  reason = smp_cmd_pairing_req(conn, skb);
  break;

 case 134:
  smp_failure(conn, 0);
  err = -EPERM;
  break;

 case 131:
  reason = smp_cmd_pairing_rsp(conn, skb);
  break;

 case 129:
  reason = smp_cmd_security_req(conn, skb);
  break;

 case 135:
  reason = smp_cmd_pairing_confirm(conn, skb);
  break;

 case 133:
  reason = smp_cmd_pairing_random(conn, skb);
  break;

 case 140:
  reason = smp_cmd_encrypt_info(conn, skb);
  break;

 case 136:
  reason = smp_cmd_master_ident(conn, skb);
  break;

 case 138:
  reason = smp_cmd_ident_info(conn, skb);
  break;

 case 139:
  reason = smp_cmd_ident_addr_info(conn, skb);
  break;

 case 128:
  reason = smp_cmd_sign_info(conn, skb);
  break;

 case 130:
  reason = smp_cmd_public_key(conn, skb);
  break;

 case 141:
  reason = smp_cmd_dhkey_check(conn, skb);
  break;

 case 137:
  reason = smp_cmd_keypress_notify(conn, skb);
  break;

 default:
  BT_DBG("Unknown command code 0x%2.2x", code);
  reason = SMP_CMD_NOTSUPP;
  goto done;
 }

done:
 if (!err) {
  if (reason)
   smp_failure(conn, reason);
  kfree_skb(skb);
 }

 return err;

drop:
 bt_dev_err(hcon->hdev, "unexpected SMP command 0x%02x from %pMR",
     code, &hcon->dst);
 kfree_skb(skb);
 return 0;
}
