
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgchk_param {char const* table; int family; int hook_mask; int targinfo; int target; struct ipt_entry* entryinfo; struct net* net; } ;
struct TYPE_5__ {int target; } ;
struct TYPE_6__ {scalar_t__ target_size; TYPE_2__ kernel; } ;
struct xt_entry_target {TYPE_3__ u; int data; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int invflags; int proto; } ;
struct ipt_entry {TYPE_1__ ip; int comefrom; } ;


 int IPT_INV_PROTO ;
 int NFPROTO_IPV4 ;
 struct xt_entry_target* ipt_get_target (struct ipt_entry*) ;
 int xt_check_target (struct xt_tgchk_param*,scalar_t__,int ,int) ;

__attribute__((used)) static int check_target(struct ipt_entry *e, struct net *net, const char *name)
{
 struct xt_entry_target *t = ipt_get_target(e);
 struct xt_tgchk_param par = {
  .net = net,
  .table = name,
  .entryinfo = e,
  .target = t->u.kernel.target,
  .targinfo = t->data,
  .hook_mask = e->comefrom,
  .family = NFPROTO_IPV4,
 };

 return xt_check_target(&par, t->u.target_size - sizeof(*t),
          e->ip.proto, e->ip.invflags & IPT_INV_PROTO);
}
