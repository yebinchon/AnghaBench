
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int proto; } ;
struct xfrm_state {TYPE_1__ id; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_seq; int sadb_msg_pid; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int sadb_msg_satype; int sadb_msg_type; int sadb_msg_version; } ;
struct TYPE_4__ {struct sk_buff* skb; int msg_portid; int msg_version; } ;
struct pfkey_sock {TYPE_2__ dump; int sk; } ;


 int BROADCAST_ONE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int SADB_DUMP ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,int *,int ) ;
 int pfkey_can_dump (int *) ;
 int pfkey_proto2satype (int ) ;
 struct sk_buff* pfkey_xfrm_state2msg (struct xfrm_state*) ;
 int sock_net (int *) ;

__attribute__((used)) static int dump_sa(struct xfrm_state *x, int count, void *ptr)
{
 struct pfkey_sock *pfk = ptr;
 struct sk_buff *out_skb;
 struct sadb_msg *out_hdr;

 if (!pfkey_can_dump(&pfk->sk))
  return -ENOBUFS;

 out_skb = pfkey_xfrm_state2msg(x);
 if (IS_ERR(out_skb))
  return PTR_ERR(out_skb);

 out_hdr = (struct sadb_msg *) out_skb->data;
 out_hdr->sadb_msg_version = pfk->dump.msg_version;
 out_hdr->sadb_msg_type = SADB_DUMP;
 out_hdr->sadb_msg_satype = pfkey_proto2satype(x->id.proto);
 out_hdr->sadb_msg_errno = 0;
 out_hdr->sadb_msg_reserved = 0;
 out_hdr->sadb_msg_seq = count + 1;
 out_hdr->sadb_msg_pid = pfk->dump.msg_portid;

 if (pfk->dump.skb)
  pfkey_broadcast(pfk->dump.skb, GFP_ATOMIC, BROADCAST_ONE,
    &pfk->sk, sock_net(&pfk->sk));
 pfk->dump.skb = out_skb;

 return 0;
}
