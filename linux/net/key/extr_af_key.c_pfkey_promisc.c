
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_satype; int sadb_msg_len; scalar_t__ sadb_msg_errno; } ;
struct pfkey_sock {int promisc; } ;


 int BROADCAST_ALL ;
 int EINVAL ;
 int GFP_KERNEL ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,int *,int ) ;
 struct pfkey_sock* pfkey_sk (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int pfkey_promisc(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 struct pfkey_sock *pfk = pfkey_sk(sk);
 int satype = hdr->sadb_msg_satype;
 bool reset_errno = 0;

 if (hdr->sadb_msg_len == (sizeof(*hdr) / sizeof(uint64_t))) {
  reset_errno = 1;
  if (satype != 0 && satype != 1)
   return -EINVAL;
  pfk->promisc = satype;
 }
 if (reset_errno && skb_cloned(skb))
  skb = skb_copy(skb, GFP_KERNEL);
 else
  skb = skb_clone(skb, GFP_KERNEL);

 if (reset_errno && skb) {
  struct sadb_msg *new_hdr = (struct sadb_msg *) skb->data;
  new_hdr->sadb_msg_errno = 0;
 }

 pfkey_broadcast(skb, GFP_KERNEL, BROADCAST_ALL, ((void*)0), sock_net(sk));
 return 0;
}
