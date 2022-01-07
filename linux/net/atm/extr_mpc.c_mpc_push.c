
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tag ;
struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {char* data; int protocol; int truesize; struct net_device* dev; } ;
struct net_device {int name; } ;
struct mpoa_client {TYPE_2__* eg_ops; } ;
struct llc_snap_hdr {int dummy; } ;
struct atm_vcc {scalar_t__ proto_data; } ;
struct atm_skb_data {int dummy; } ;
struct TYPE_8__ {int DH_length; int DLL_header; } ;
struct TYPE_10__ {int packets_rcvd; int latest_ip_addr; TYPE_1__ ctrl_info; struct atm_vcc* shortcut; } ;
typedef TYPE_3__ eg_cache_entry ;
typedef int __be32 ;
struct TYPE_11__ {int saddr; } ;
struct TYPE_9__ {int (* put ) (TYPE_3__*) ;TYPE_3__* (* get_by_tag ) (int ,struct mpoa_client*) ;} ;


 int ATM_SKB (struct sk_buff*) ;
 int atm_return (struct atm_vcc*,int ) ;
 int ddprintk (char*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dprintk (char*,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct mpoa_client* find_mpc_by_lec (struct net_device*) ;
 TYPE_7__* ip_hdr (struct sk_buff*) ;
 int llc_snap_mpoa_ctrl ;
 int llc_snap_mpoa_data ;
 int llc_snap_mpoa_data_tagged ;
 scalar_t__ memcmp (char*,int *,int) ;
 int memset (int ,int ,int) ;
 int mpc_vcc_close (struct atm_vcc*,struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int pr_info (char*,int ,...) ;
 int purge_egress_shortcut (struct atm_vcc*,int *) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int stub1 (struct sock*) ;
 TYPE_3__* stub2 (int ,struct mpoa_client*) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;

__attribute__((used)) static void mpc_push(struct atm_vcc *vcc, struct sk_buff *skb)
{
 struct net_device *dev = (struct net_device *)vcc->proto_data;
 struct sk_buff *new_skb;
 eg_cache_entry *eg;
 struct mpoa_client *mpc;
 __be32 tag;
 char *tmp;

 ddprintk("(%s)\n", dev->name);
 if (skb == ((void*)0)) {
  dprintk("(%s) null skb, closing VCC\n", dev->name);
  mpc_vcc_close(vcc, dev);
  return;
 }

 skb->dev = dev;
 if (memcmp(skb->data, &llc_snap_mpoa_ctrl,
     sizeof(struct llc_snap_hdr)) == 0) {
  struct sock *sk = sk_atm(vcc);

  dprintk("(%s) control packet arrived\n", dev->name);

  skb_queue_tail(&sk->sk_receive_queue, skb);
  sk->sk_data_ready(sk);
  return;
 }


 atm_return(vcc, skb->truesize);

 mpc = find_mpc_by_lec(dev);
 if (mpc == ((void*)0)) {
  pr_info("(%s) unknown MPC\n", dev->name);
  return;
 }

 if (memcmp(skb->data, &llc_snap_mpoa_data_tagged,
     sizeof(struct llc_snap_hdr)) == 0) {
  ddprintk("(%s) tagged data packet arrived\n", dev->name);

 } else if (memcmp(skb->data, &llc_snap_mpoa_data,
     sizeof(struct llc_snap_hdr)) == 0) {
  pr_info("(%s) Unsupported non-tagged data packet arrived.  Purging\n",
   dev->name);
  dev_kfree_skb_any(skb);
  return;
 } else {
  pr_info("(%s) garbage arrived, purging\n", dev->name);
  dev_kfree_skb_any(skb);
  return;
 }

 tmp = skb->data + sizeof(struct llc_snap_hdr);
 tag = *(__be32 *)tmp;

 eg = mpc->eg_ops->get_by_tag(tag, mpc);
 if (eg == ((void*)0)) {
  pr_info("mpoa: (%s) Didn't find egress cache entry, tag = %u\n",
   dev->name, tag);
  purge_egress_shortcut(vcc, ((void*)0));
  dev_kfree_skb_any(skb);
  return;
 }





 if (eg->shortcut == ((void*)0)) {
  eg->shortcut = vcc;
  pr_info("(%s) egress SVC in use\n", dev->name);
 }

 skb_pull(skb, sizeof(struct llc_snap_hdr) + sizeof(tag));

 new_skb = skb_realloc_headroom(skb, eg->ctrl_info.DH_length);

 dev_kfree_skb_any(skb);
 if (new_skb == ((void*)0)) {
  mpc->eg_ops->put(eg);
  return;
 }
 skb_push(new_skb, eg->ctrl_info.DH_length);
 skb_copy_to_linear_data(new_skb, eg->ctrl_info.DLL_header,
    eg->ctrl_info.DH_length);
 new_skb->protocol = eth_type_trans(new_skb, dev);
 skb_reset_network_header(new_skb);

 eg->latest_ip_addr = ip_hdr(new_skb)->saddr;
 eg->packets_rcvd++;
 mpc->eg_ops->put(eg);

 memset(ATM_SKB(new_skb), 0, sizeof(struct atm_skb_data));
 netif_rx(new_skb);
}
