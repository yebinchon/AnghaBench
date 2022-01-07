
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dn_skb_cb {scalar_t__ xmit_count; } ;
struct dn_scp {int nsp_srtt; int nsp_rttvar; unsigned long stamp; scalar_t__ flowrem_sw; int data_xmit_queue; int other_xmit_queue; int snd_window; } ;
typedef int gfp_t ;


 scalar_t__ DN_SEND ;
 struct dn_scp* DN_SK (struct sock*) ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int NSP_MIN_WINDOW ;
 int dn_nsp_clone_and_send (struct sk_buff*,int ) ;
 int dn_nsp_mk_data_header (struct sock*,struct sk_buff*,int) ;
 unsigned long jiffies ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void dn_nsp_queue_xmit(struct sock *sk, struct sk_buff *skb,
   gfp_t gfp, int oth)
{
 struct dn_scp *scp = DN_SK(sk);
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 unsigned long t = ((scp->nsp_srtt >> 2) + scp->nsp_rttvar) >> 1;

 cb->xmit_count = 0;
 dn_nsp_mk_data_header(sk, skb, oth);





 if ((jiffies - scp->stamp) > t)
  scp->snd_window = NSP_MIN_WINDOW;

 if (oth)
  skb_queue_tail(&scp->other_xmit_queue, skb);
 else
  skb_queue_tail(&scp->data_xmit_queue, skb);

 if (scp->flowrem_sw != DN_SEND)
  return;

 dn_nsp_clone_and_send(skb, gfp);
}
