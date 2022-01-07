
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_satype; } ;
struct pfkey_sock {int registered; } ;


 int BROADCAST_REGISTERED ;
 int EEXIST ;
 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int SADB_SATYPE_MAX ;
 int SADB_SATYPE_UNSPEC ;
 struct sk_buff* compose_sadb_supported (struct sadb_msg const*,int ) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,struct sock*,int ) ;
 struct pfkey_sock* pfkey_sk (struct sock*) ;
 int sock_net (struct sock*) ;
 int xfrm_probe_algs () ;

__attribute__((used)) static int pfkey_register(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 struct pfkey_sock *pfk = pfkey_sk(sk);
 struct sk_buff *supp_skb;

 if (hdr->sadb_msg_satype > SADB_SATYPE_MAX)
  return -EINVAL;

 if (hdr->sadb_msg_satype != SADB_SATYPE_UNSPEC) {
  if (pfk->registered&(1<<hdr->sadb_msg_satype))
   return -EEXIST;
  pfk->registered |= (1<<hdr->sadb_msg_satype);
 }

 xfrm_probe_algs();

 supp_skb = compose_sadb_supported(hdr, GFP_KERNEL);
 if (!supp_skb) {
  if (hdr->sadb_msg_satype != SADB_SATYPE_UNSPEC)
   pfk->registered &= ~(1<<hdr->sadb_msg_satype);

  return -ENOBUFS;
 }

 pfkey_broadcast(supp_skb, GFP_KERNEL, BROADCAST_REGISTERED, sk,
   sock_net(sk));
 return 0;
}
