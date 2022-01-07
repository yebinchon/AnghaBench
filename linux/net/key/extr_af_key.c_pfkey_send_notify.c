
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct netns_pfkey {int socks_nr; } ;
struct net {int dummy; } ;
struct km_event {int event; struct net* net; } ;
 scalar_t__ atomic_read (int *) ;
 int key_notify_sa (struct xfrm_state*,struct km_event const*) ;
 int key_notify_sa_expire (struct xfrm_state*,struct km_event const*) ;
 int key_notify_sa_flush (struct km_event const*) ;
 struct netns_pfkey* net_generic (struct net*,int ) ;
 int pfkey_net_id ;
 int pr_err (char*,int) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static int pfkey_send_notify(struct xfrm_state *x, const struct km_event *c)
{
 struct net *net = x ? xs_net(x) : c->net;
 struct netns_pfkey *net_pfkey = net_generic(net, pfkey_net_id);

 if (atomic_read(&net_pfkey->socks_nr) == 0)
  return 0;

 switch (c->event) {
 case 132:
  return key_notify_sa_expire(x, c);
 case 133:
 case 129:
 case 128:
  return key_notify_sa(x, c);
 case 131:
  return key_notify_sa_flush(c);
 case 130:
  break;
 default:
  pr_err("pfkey: Unknown SA event %d\n", c->event);
  break;
 }

 return 0;
}
