
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_seq; } ;
struct net {int dummy; } ;
struct km_event {int event; int portid; int seq; } ;


 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 int SADB_EXT_ADDRESS_DST ;
 int SADB_EXT_ADDRESS_SRC ;
 int SADB_EXT_SA ;
 int XFRM_MSG_DELSA ;
 int km_state_notify (struct xfrm_state*,struct km_event*) ;
 struct xfrm_state* pfkey_xfrm_state_lookup (struct net*,struct sadb_msg const*,void* const*) ;
 int present_and_same_family (void* const,void* const) ;
 int security_xfrm_state_delete (struct xfrm_state*) ;
 struct net* sock_net (struct sock*) ;
 int xfrm_audit_state_delete (struct xfrm_state*,int,int) ;
 int xfrm_state_delete (struct xfrm_state*) ;
 scalar_t__ xfrm_state_kern (struct xfrm_state*) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_delete(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 struct net *net = sock_net(sk);
 struct xfrm_state *x;
 struct km_event c;
 int err;

 if (!ext_hdrs[SADB_EXT_SA-1] ||
     !present_and_same_family(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
         ext_hdrs[SADB_EXT_ADDRESS_DST-1]))
  return -EINVAL;

 x = pfkey_xfrm_state_lookup(net, hdr, ext_hdrs);
 if (x == ((void*)0))
  return -ESRCH;

 if ((err = security_xfrm_state_delete(x)))
  goto out;

 if (xfrm_state_kern(x)) {
  err = -EPERM;
  goto out;
 }

 err = xfrm_state_delete(x);

 if (err < 0)
  goto out;

 c.seq = hdr->sadb_msg_seq;
 c.portid = hdr->sadb_msg_pid;
 c.event = XFRM_MSG_DELSA;
 km_state_notify(x, &c);
out:
 xfrm_audit_state_delete(x, err ? 0 : 1, 1);
 xfrm_state_put(x);

 return err;
}
