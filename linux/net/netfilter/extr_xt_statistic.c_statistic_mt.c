
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int every; } ;
struct TYPE_5__ {int probability; } ;
struct TYPE_8__ {TYPE_3__ nth; TYPE_1__ random; } ;
struct xt_statistic_info {int flags; int mode; TYPE_4__ u; TYPE_2__* master; } ;
struct xt_action_param {struct xt_statistic_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int count; } ;


 int XT_STATISTIC_INVERT ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;
 int prandom_u32 () ;

__attribute__((used)) static bool
statistic_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_statistic_info *info = par->matchinfo;
 bool ret = info->flags & XT_STATISTIC_INVERT;
 int nval, oval;

 switch (info->mode) {
 case 128:
  if ((prandom_u32() & 0x7FFFFFFF) < info->u.random.probability)
   ret = !ret;
  break;
 case 129:
  do {
   oval = atomic_read(&info->master->count);
   nval = (oval == info->u.nth.every) ? 0 : oval + 1;
  } while (atomic_cmpxchg(&info->master->count, oval, nval) != oval);
  if (nval == 0)
   ret = !ret;
  break;
 }

 return ret;
}
