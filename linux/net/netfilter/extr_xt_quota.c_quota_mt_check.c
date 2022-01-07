
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_quota_info {int flags; int quota; TYPE_1__* master; } ;
struct xt_mtchk_param {struct xt_quota_info* matchinfo; } ;
struct TYPE_2__ {int quota; int lock; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int XT_QUOTA_MASK ;
 TYPE_1__* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int quota_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_quota_info *q = par->matchinfo;

 if (q->flags & ~XT_QUOTA_MASK)
  return -EINVAL;

 q->master = kmalloc(sizeof(*q->master), GFP_KERNEL);
 if (q->master == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&q->master->lock);
 q->master->quota = q->quota;
 return 0;
}
