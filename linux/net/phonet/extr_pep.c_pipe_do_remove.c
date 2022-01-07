
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {int data0; int pipe_handle; int message_id; scalar_t__ utid; } ;
struct pep_sock {int pipe_handle; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAD ;
 int PNS_PIPE_REMOVE_REQ ;
 struct sk_buff* pep_alloc_skb (struct sock*,int *,int ,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pn_skb_send (struct sock*,struct sk_buff*,int *) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;

__attribute__((used)) static int pipe_do_remove(struct sock *sk)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *ph;
 struct sk_buff *skb;

 skb = pep_alloc_skb(sk, ((void*)0), 0, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 ph = pnp_hdr(skb);
 ph->utid = 0;
 ph->message_id = PNS_PIPE_REMOVE_REQ;
 ph->pipe_handle = pn->pipe_handle;
 ph->data0 = PAD;
 return pn_skb_send(sk, skb, ((void*)0));
}
