
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {void* error_code; int pipe_handle; void* message_id; void* utid; } ;
struct pep_sock {int pipe_handle; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sk_buff* pep_alloc_skb (struct sock*,void const*,int,int ) ;
 struct pep_sock* pep_sk (struct sock*) ;
 int pn_skb_send (struct sock*,struct sk_buff*,int *) ;
 struct pnpipehdr* pnp_hdr (struct sk_buff*) ;

__attribute__((used)) static int pipe_handler_request(struct sock *sk, u8 id, u8 code,
    const void *data, int len)
{
 struct pep_sock *pn = pep_sk(sk);
 struct pnpipehdr *ph;
 struct sk_buff *skb;

 skb = pep_alloc_skb(sk, data, len, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 ph = pnp_hdr(skb);
 ph->utid = id;
 ph->message_id = id;
 ph->pipe_handle = pn->pipe_handle;
 ph->error_code = code;
 return pn_skb_send(sk, skb, ((void*)0));
}
