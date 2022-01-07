
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct ipv6_pinfo {int dummy; } ;
struct TYPE_3__ {int sk_bound_dev_if; } ;
struct inet_sock {struct ipv6_pinfo* pinet6; TYPE_1__ sk; } ;
struct TYPE_4__ {int ip6; } ;
struct flowi {TYPE_2__ u; } ;
struct dst_entry {int error; } ;


 int dst_release (struct dst_entry*) ;
 struct dst_entry* ip6_route_output (struct net*,void const*,int *) ;

int __nf_ip6_route(struct net *net, struct dst_entry **dst,
     struct flowi *fl, bool strict)
{
 static const struct ipv6_pinfo fake_pinfo;
 static const struct inet_sock fake_sk = {

  .sk.sk_bound_dev_if = 1,
  .pinet6 = (struct ipv6_pinfo *) &fake_pinfo,
 };
 const void *sk = strict ? &fake_sk : ((void*)0);
 struct dst_entry *result;
 int err;

 result = ip6_route_output(net, sk, &fl->u.ip6);
 err = result->error;
 if (err)
  dst_release(result);
 else
  *dst = result;
 return err;
}
