
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_seq; int sadb_msg_satype; } ;
struct net {int dummy; } ;
struct TYPE_2__ {unsigned int proto; } ;
struct km_event {struct net* net; int event; int portid; int seq; TYPE_1__ data; } ;


 int EINVAL ;
 int ESRCH ;
 int XFRM_MSG_FLUSHSA ;
 int km_state_notify (int *,struct km_event*) ;
 unsigned int pfkey_satype2proto (int ) ;
 struct net* sock_net (struct sock*) ;
 int unicast_flush_resp (struct sock*,struct sadb_msg const*) ;
 int xfrm_state_flush (struct net*,unsigned int,int,int) ;

__attribute__((used)) static int pfkey_flush(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 struct net *net = sock_net(sk);
 unsigned int proto;
 struct km_event c;
 int err, err2;

 proto = pfkey_satype2proto(hdr->sadb_msg_satype);
 if (proto == 0)
  return -EINVAL;

 err = xfrm_state_flush(net, proto, 1, 0);
 err2 = unicast_flush_resp(sk, hdr);
 if (err || err2) {
  if (err == -ESRCH)
   err = 0;
  return err ? err : err2;
 }

 c.data.proto = proto;
 c.seq = hdr->sadb_msg_seq;
 c.portid = hdr->sadb_msg_pid;
 c.event = XFRM_MSG_FLUSHSA;
 c.net = net;
 km_state_notify(((void*)0), &c);

 return 0;
}
