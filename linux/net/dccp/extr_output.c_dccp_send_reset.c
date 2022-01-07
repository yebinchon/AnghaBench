
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {TYPE_2__* sk_prot; } ;
struct sk_buff {int dummy; } ;
typedef enum dccp_reset_codes { ____Placeholder_dccp_reset_codes } dccp_reset_codes ;
struct TYPE_8__ {int dccpd_reset_code; int dccpd_type; } ;
struct TYPE_7__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_6__ {int max_header; } ;
struct TYPE_5__ {int (* rebuild_header ) (struct sock*) ;} ;


 int DCCP_PKT_RESET ;
 TYPE_4__* DCCP_SKB_CB (struct sk_buff*) ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int dccp_transmit_skb (struct sock*,struct sk_buff*) ;
 TYPE_3__* inet_csk (struct sock*) ;
 int skb_reserve (struct sk_buff*,int ) ;
 struct sk_buff* sock_wmalloc (struct sock*,int ,int,int ) ;
 int stub1 (struct sock*) ;

int dccp_send_reset(struct sock *sk, enum dccp_reset_codes code)
{
 struct sk_buff *skb;




 int err = inet_csk(sk)->icsk_af_ops->rebuild_header(sk);

 if (err != 0)
  return err;

 skb = sock_wmalloc(sk, sk->sk_prot->max_header, 1, GFP_ATOMIC);
 if (skb == ((void*)0))
  return -ENOBUFS;


 skb_reserve(skb, sk->sk_prot->max_header);
 DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_RESET;
 DCCP_SKB_CB(skb)->dccpd_reset_code = code;

 return dccp_transmit_skb(sk, skb);
}
