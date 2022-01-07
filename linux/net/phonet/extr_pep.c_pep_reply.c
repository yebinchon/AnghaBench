
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr_pn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {int error_code; int pipe_handle; scalar_t__ message_id; int utid; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct sk_buff* pep_alloc_skb (struct sock*,void const*,int,int ) ;
 int pn_skb_get_src_sockaddr (struct sk_buff*,struct sockaddr_pn*) ;
 int pn_skb_send (struct sock*,struct sk_buff*,struct sockaddr_pn*) ;
 void* pnp_hdr (struct sk_buff*) ;

__attribute__((used)) static int pep_reply(struct sock *sk, struct sk_buff *oskb, u8 code,
   const void *data, int len, gfp_t priority)
{
 const struct pnpipehdr *oph = pnp_hdr(oskb);
 struct pnpipehdr *ph;
 struct sk_buff *skb;
 struct sockaddr_pn peer;

 skb = pep_alloc_skb(sk, data, len, priority);
 if (!skb)
  return -ENOMEM;

 ph = pnp_hdr(skb);
 ph->utid = oph->utid;
 ph->message_id = oph->message_id + 1;
 ph->pipe_handle = oph->pipe_handle;
 ph->error_code = code;

 pn_skb_get_src_sockaddr(oskb, &peer);
 return pn_skb_send(sk, skb, &peer);
}
