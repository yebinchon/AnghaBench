
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct TYPE_5__ {TYPE_1__ nth; } ;
struct xt_statistic_info {scalar_t__ mode; int flags; TYPE_2__ u; TYPE_3__* master; } ;
struct xt_mtchk_param {struct xt_statistic_info* matchinfo; } ;
struct TYPE_6__ {int count; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int XT_STATISTIC_MASK ;
 scalar_t__ XT_STATISTIC_MODE_MAX ;
 int atomic_set (int *,int ) ;
 TYPE_3__* kzalloc (int,int ) ;

__attribute__((used)) static int statistic_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_statistic_info *info = par->matchinfo;

 if (info->mode > XT_STATISTIC_MODE_MAX ||
     info->flags & ~XT_STATISTIC_MASK)
  return -EINVAL;

 info->master = kzalloc(sizeof(*info->master), GFP_KERNEL);
 if (info->master == ((void*)0))
  return -ENOMEM;
 atomic_set(&info->master->count, info->u.nth.count);

 return 0;
}
