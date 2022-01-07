
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgchk_param {int family; int net; struct ip6t_entry* entryinfo; } ;
struct synproxy_net {int dummy; } ;
struct TYPE_2__ {int flags; scalar_t__ proto; int invflags; } ;
struct ip6t_entry {TYPE_1__ ipv6; } ;


 int EINVAL ;
 int IP6T_F_PROTO ;
 scalar_t__ IPPROTO_TCP ;
 int XT_INV_PROTO ;
 int nf_ct_netns_get (int ,int ) ;
 int nf_ct_netns_put (int ,int ) ;
 int nf_synproxy_ipv6_init (struct synproxy_net*,int ) ;
 struct synproxy_net* synproxy_pernet (int ) ;

__attribute__((used)) static int synproxy_tg6_check(const struct xt_tgchk_param *par)
{
 struct synproxy_net *snet = synproxy_pernet(par->net);
 const struct ip6t_entry *e = par->entryinfo;
 int err;

 if (!(e->ipv6.flags & IP6T_F_PROTO) ||
     e->ipv6.proto != IPPROTO_TCP ||
     e->ipv6.invflags & XT_INV_PROTO)
  return -EINVAL;

 err = nf_ct_netns_get(par->net, par->family);
 if (err)
  return err;

 err = nf_synproxy_ipv6_init(snet, par->net);
 if (err) {
  nf_ct_netns_put(par->net, par->family);
  return err;
 }

 return err;
}
