
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_chan {struct amp_mgr* data; } ;
struct amp_mgr {int ident; } ;
struct a2mp_cmd_rej {int reason; } ;
struct a2mp_cmd {int code; int ident; int len; } ;
typedef int rej ;
 int BT_DBG (char*,int,int,...) ;
 int BT_ERR (char*,int) ;
 int EINVAL ;
 int a2mp_change_notify (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_cmd_rsp (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_command_rej (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_createphyslink_req (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_discover_req (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_discover_rsp (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_discphyslink_req (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_getampassoc_req (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_getampassoc_rsp (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_getinfo_req (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_getinfo_rsp (struct amp_mgr*,struct sk_buff*,struct a2mp_cmd*) ;
 int a2mp_send (struct amp_mgr*,int const,int ,int,struct a2mp_cmd_rej*) ;
 int amp_mgr_get (struct amp_mgr*) ;
 int amp_mgr_put (struct amp_mgr*) ;
 int cpu_to_le16 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int a2mp_chan_recv_cb(struct l2cap_chan *chan, struct sk_buff *skb)
{
 struct a2mp_cmd *hdr;
 struct amp_mgr *mgr = chan->data;
 int err = 0;

 amp_mgr_get(mgr);

 while (skb->len >= sizeof(*hdr)) {
  u16 len;

  hdr = (void *) skb->data;
  len = le16_to_cpu(hdr->len);

  BT_DBG("code 0x%2.2x id %d len %u", hdr->code, hdr->ident, len);

  skb_pull(skb, sizeof(*hdr));

  if (len > skb->len || !hdr->ident) {
   err = -EINVAL;
   break;
  }

  mgr->ident = hdr->ident;

  switch (hdr->code) {
  case 138:
   a2mp_command_rej(mgr, skb, hdr);
   break;

  case 133:
   err = a2mp_discover_req(mgr, skb, hdr);
   break;

  case 140:
   err = a2mp_change_notify(mgr, skb, hdr);
   break;

  case 129:
   err = a2mp_getinfo_req(mgr, skb, hdr);
   break;

  case 131:
   err = a2mp_getampassoc_req(mgr, skb, hdr);
   break;

  case 137:
   err = a2mp_createphyslink_req(mgr, skb, hdr);
   break;

  case 135:
   err = a2mp_discphyslink_req(mgr, skb, hdr);
   break;

  case 132:
   err = a2mp_discover_rsp(mgr, skb, hdr);
   break;

  case 128:
   err = a2mp_getinfo_rsp(mgr, skb, hdr);
   break;

  case 130:
   err = a2mp_getampassoc_rsp(mgr, skb, hdr);
   break;

  case 139:
  case 136:
  case 134:
   err = a2mp_cmd_rsp(mgr, skb, hdr);
   break;

  default:
   BT_ERR("Unknown A2MP sig cmd 0x%2.2x", hdr->code);
   err = -EINVAL;
   break;
  }
 }

 if (err) {
  struct a2mp_cmd_rej rej;

  rej.reason = cpu_to_le16(0);
  hdr = (void *) skb->data;

  BT_DBG("Send A2MP Rej: cmd 0x%2.2x err %d", hdr->code, err);

  a2mp_send(mgr, 138, hdr->ident, sizeof(rej),
     &rej);
 }



 kfree_skb(skb);

 amp_mgr_put(mgr);

 return 0;
}
