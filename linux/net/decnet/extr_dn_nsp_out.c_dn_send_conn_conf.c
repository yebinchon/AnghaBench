
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nsp_conn_init_msg {int msgflg; int segsize; int info; int services; int srcaddr; int dstaddr; } ;
struct TYPE_2__ {int opt_data; int opt_optl; } ;
struct dn_scp {int persist_fxn; int persist; TYPE_1__ conndata_out; int segsize_loc; int info_loc; int services_loc; int addrloc; int addrrem; } ;
typedef int gfp_t ;
typedef scalar_t__ __u8 ;


 struct dn_scp* DN_SK (struct sock*) ;
 int cpu_to_le16 (int ) ;
 struct sk_buff* dn_alloc_skb (struct sock*,scalar_t__,int ) ;
 int dn_nsp_persist (struct sock*) ;
 int dn_nsp_retrans_conn_conf ;
 int dn_nsp_send (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 struct nsp_conn_init_msg* skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int ,scalar_t__) ;
 int skb_put_u8 (struct sk_buff*,scalar_t__) ;

void dn_send_conn_conf(struct sock *sk, gfp_t gfp)
{
 struct dn_scp *scp = DN_SK(sk);
 struct sk_buff *skb = ((void*)0);
 struct nsp_conn_init_msg *msg;
 __u8 len = (__u8)le16_to_cpu(scp->conndata_out.opt_optl);

 if ((skb = dn_alloc_skb(sk, 50 + len, gfp)) == ((void*)0))
  return;

 msg = skb_put(skb, sizeof(*msg));
 msg->msgflg = 0x28;
 msg->dstaddr = scp->addrrem;
 msg->srcaddr = scp->addrloc;
 msg->services = scp->services_loc;
 msg->info = scp->info_loc;
 msg->segsize = cpu_to_le16(scp->segsize_loc);

 skb_put_u8(skb, len);

 if (len > 0)
  skb_put_data(skb, scp->conndata_out.opt_data, len);


 dn_nsp_send(skb);

 scp->persist = dn_nsp_persist(sk);
 scp->persist_fxn = dn_nsp_retrans_conn_conf;
}
