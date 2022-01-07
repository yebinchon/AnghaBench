
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {void* error_code; int pipe_handle; void* message_id; scalar_t__ utid; } ;
struct pep_sock {int pipe_handle; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct sk_buff* pep_alloc_skb (struct sock*,void const*,int,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pn_skb_send (struct sock*,struct sk_buff*,int *) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;

__attribute__((used)) static int pep_indicate(struct sock *sk, u8 id, u8 code,
   const void *data, int len, gfp_t priority)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *ph;
 struct sk_buff *skb;

 skb = pep_alloc_skb(sk, data, len, priority);
 if (!skb)
  return -ENOMEM;

 ph = pnp_hdr(skb);
 ph->utid = 0;
 ph->message_id = id;
 ph->pipe_handle = pn->pipe_handle;
 ph->error_code = code;
 return pn_skb_send(sk, skb, ((void*)0));
}
