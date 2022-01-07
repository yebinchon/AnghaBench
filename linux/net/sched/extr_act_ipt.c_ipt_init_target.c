
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgchk_param {char* table; unsigned int hook_mask; int family; int targinfo; struct xt_target* target; struct ipt_entry* entryinfo; struct net* net; } ;
struct xt_target {int me; } ;
struct TYPE_5__ {struct xt_target* target; } ;
struct TYPE_4__ {int revision; int name; } ;
struct TYPE_6__ {TYPE_2__ kernel; scalar_t__ target_size; TYPE_1__ user; } ;
struct xt_entry_target {TYPE_3__ u; int data; } ;
struct net {int dummy; } ;
struct ipt_entry {int dummy; } ;
typedef int par ;


 int AF_INET ;
 scalar_t__ IS_ERR (struct xt_target*) ;
 int NFPROTO_IPV4 ;
 int PTR_ERR (struct xt_target*) ;
 int memset (struct xt_tgchk_param*,int ,int) ;
 int module_put (int ) ;
 int xt_check_target (struct xt_tgchk_param*,scalar_t__,int ,int) ;
 struct xt_target* xt_request_find_target (int ,int ,int ) ;

__attribute__((used)) static int ipt_init_target(struct net *net, struct xt_entry_target *t,
      char *table, unsigned int hook)
{
 struct xt_tgchk_param par;
 struct xt_target *target;
 struct ipt_entry e = {};
 int ret = 0;

 target = xt_request_find_target(AF_INET, t->u.user.name,
     t->u.user.revision);
 if (IS_ERR(target))
  return PTR_ERR(target);

 t->u.kernel.target = target;
 memset(&par, 0, sizeof(par));
 par.net = net;
 par.table = table;
 par.entryinfo = &e;
 par.target = target;
 par.targinfo = t->data;
 par.hook_mask = hook;
 par.family = NFPROTO_IPV4;

 ret = xt_check_target(&par, t->u.target_size - sizeof(*t), 0, 0);
 if (ret < 0) {
  module_put(t->u.kernel.target->me);
  return ret;
 }
 return 0;
}
