
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;
struct xfrm_state {TYPE_1__ id; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int sadb_msg_satype; int sadb_msg_type; int sadb_msg_version; } ;
struct net {int dummy; } ;
typedef int __u8 ;


 int BROADCAST_ONE ;
 int EINVAL ;
 int ESRCH ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int SADB_EXT_ADDRESS_DST ;
 int SADB_EXT_ADDRESS_SRC ;
 int SADB_EXT_SA ;
 int SADB_GET ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,struct sock*,struct net*) ;
 int pfkey_proto2satype (int ) ;
 struct sk_buff* pfkey_xfrm_state2msg (struct xfrm_state*) ;
 struct xfrm_state* pfkey_xfrm_state_lookup (struct net*,struct sadb_msg const*,void* const*) ;
 int present_and_same_family (void* const,void* const) ;
 struct net* sock_net (struct sock*) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_get(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 struct net *net = sock_net(sk);
 __u8 proto;
 struct sk_buff *out_skb;
 struct sadb_msg *out_hdr;
 struct xfrm_state *x;

 if (!ext_hdrs[SADB_EXT_SA-1] ||
     !present_and_same_family(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
         ext_hdrs[SADB_EXT_ADDRESS_DST-1]))
  return -EINVAL;

 x = pfkey_xfrm_state_lookup(net, hdr, ext_hdrs);
 if (x == ((void*)0))
  return -ESRCH;

 out_skb = pfkey_xfrm_state2msg(x);
 proto = x->id.proto;
 xfrm_state_put(x);
 if (IS_ERR(out_skb))
  return PTR_ERR(out_skb);

 out_hdr = (struct sadb_msg *) out_skb->data;
 out_hdr->sadb_msg_version = hdr->sadb_msg_version;
 out_hdr->sadb_msg_type = SADB_GET;
 out_hdr->sadb_msg_satype = pfkey_proto2satype(proto);
 out_hdr->sadb_msg_errno = 0;
 out_hdr->sadb_msg_reserved = 0;
 out_hdr->sadb_msg_seq = hdr->sadb_msg_seq;
 out_hdr->sadb_msg_pid = hdr->sadb_msg_pid;
 pfkey_broadcast(out_skb, GFP_ATOMIC, BROADCAST_ONE, sk, sock_net(sk));

 return 0;
}
