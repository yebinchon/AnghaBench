
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_seq; int sadb_msg_pid; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct km_event {struct net* net; int seq; int portid; int event; TYPE_1__ data; } ;


 int ESRCH ;
 int XFRM_MSG_FLUSHPOLICY ;
 int XFRM_POLICY_TYPE_MAIN ;
 int km_policy_notify (int *,int ,struct km_event*) ;
 struct net* sock_net (struct sock*) ;
 int unicast_flush_resp (struct sock*,struct sadb_msg const*) ;
 int xfrm_policy_flush (struct net*,int ,int) ;

__attribute__((used)) static int pfkey_spdflush(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 struct net *net = sock_net(sk);
 struct km_event c;
 int err, err2;

 err = xfrm_policy_flush(net, XFRM_POLICY_TYPE_MAIN, 1);
 err2 = unicast_flush_resp(sk, hdr);
 if (err || err2) {
  if (err == -ESRCH)
   return 0;
  return err;
 }

 c.data.type = XFRM_POLICY_TYPE_MAIN;
 c.event = XFRM_MSG_FLUSHPOLICY;
 c.portid = hdr->sadb_msg_pid;
 c.seq = hdr->sadb_msg_seq;
 c.net = net;
 km_policy_notify(((void*)0), 0, &c);

 return 0;
}
