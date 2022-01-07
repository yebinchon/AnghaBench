
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {int len; int truesize; scalar_t__ data; } ;
struct lec_priv {int lecd; } ;
struct TYPE_3__ {int targetless_le_arp; int atm_addr; int mac_addr; } ;
struct TYPE_4__ {TYPE_1__ normal; } ;
struct atmlec_msg {int sizeoftlvs; TYPE_2__ content; int type; } ;
typedef int atmlec_msg_type ;


 int ATM_ESA_LEN ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atm_force_charge (int ,int ) ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int memcpy (int *,unsigned char const*,int ) ;
 int memset (struct atmlec_msg*,int ,int) ;
 int pr_debug (char*,int) ;
 struct sock* sk_atm (int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static int
send_to_lecd(struct lec_priv *priv, atmlec_msg_type type,
      const unsigned char *mac_addr, const unsigned char *atm_addr,
      struct sk_buff *data)
{
 struct sock *sk;
 struct sk_buff *skb;
 struct atmlec_msg *mesg;

 if (!priv || !priv->lecd)
  return -1;
 skb = alloc_skb(sizeof(struct atmlec_msg), GFP_ATOMIC);
 if (!skb)
  return -1;
 skb->len = sizeof(struct atmlec_msg);
 mesg = (struct atmlec_msg *)skb->data;
 memset(mesg, 0, sizeof(struct atmlec_msg));
 mesg->type = type;
 if (data != ((void*)0))
  mesg->sizeoftlvs = data->len;
 if (mac_addr)
  ether_addr_copy(mesg->content.normal.mac_addr, mac_addr);
 else
  mesg->content.normal.targetless_le_arp = 1;
 if (atm_addr)
  memcpy(&mesg->content.normal.atm_addr, atm_addr, ATM_ESA_LEN);

 atm_force_charge(priv->lecd, skb->truesize);
 sk = sk_atm(priv->lecd);
 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_data_ready(sk);

 if (data != ((void*)0)) {
  pr_debug("about to send %d bytes of data\n", data->len);
  atm_force_charge(priv->lecd, data->truesize);
  skb_queue_tail(&sk->sk_receive_queue, data);
  sk->sk_data_ready(sk);
 }

 return 0;
}
