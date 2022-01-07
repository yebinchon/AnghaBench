
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgchk_param {char const* table; int family; int hook_mask; int targinfo; int target; struct ip6t_entry* entryinfo; struct net* net; } ;
struct TYPE_5__ {int target; } ;
struct TYPE_6__ {scalar_t__ target_size; TYPE_2__ kernel; } ;
struct xt_entry_target {TYPE_3__ u; int data; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int invflags; int proto; } ;
struct ip6t_entry {TYPE_1__ ipv6; int comefrom; } ;


 int IP6T_INV_PROTO ;
 int NFPROTO_IPV6 ;
 struct xt_entry_target* ip6t_get_target (struct ip6t_entry*) ;
 int xt_check_target (struct xt_tgchk_param*,scalar_t__,int ,int) ;

__attribute__((used)) static int check_target(struct ip6t_entry *e, struct net *net, const char *name)
{
 struct xt_entry_target *t = ip6t_get_target(e);
 struct xt_tgchk_param par = {
  .net = net,
  .table = name,
  .entryinfo = e,
  .target = t->u.kernel.target,
  .targinfo = t->data,
  .hook_mask = e->comefrom,
  .family = NFPROTO_IPV6,
 };

 return xt_check_target(&par, t->u.target_size - sizeof(*t),
          e->ipv6.proto,
          e->ipv6.invflags & IP6T_INV_PROTO);
}
