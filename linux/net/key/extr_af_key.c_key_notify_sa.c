
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;
struct xfrm_state {TYPE_1__ id; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int sadb_msg_satype; int sadb_msg_type; int sadb_msg_version; } ;
struct km_event {int portid; int seq; int event; } ;


 int BROADCAST_ALL ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PF_KEY_V2 ;
 int PTR_ERR (struct sk_buff*) ;
 int event2keytype (int ) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,int *,int ) ;
 int pfkey_proto2satype (int ) ;
 struct sk_buff* pfkey_xfrm_state2msg (struct xfrm_state*) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static int key_notify_sa(struct xfrm_state *x, const struct km_event *c)
{
 struct sk_buff *skb;
 struct sadb_msg *hdr;

 skb = pfkey_xfrm_state2msg(x);

 if (IS_ERR(skb))
  return PTR_ERR(skb);

 hdr = (struct sadb_msg *) skb->data;
 hdr->sadb_msg_version = PF_KEY_V2;
 hdr->sadb_msg_type = event2keytype(c->event);
 hdr->sadb_msg_satype = pfkey_proto2satype(x->id.proto);
 hdr->sadb_msg_errno = 0;
 hdr->sadb_msg_reserved = 0;
 hdr->sadb_msg_seq = c->seq;
 hdr->sadb_msg_pid = c->portid;

 pfkey_broadcast(skb, GFP_ATOMIC, BROADCAST_ALL, ((void*)0), xs_net(x));

 return 0;
}
