
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int sta; int rate_ctrl_lock; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
typedef int gfp_t ;
struct TYPE_2__ {void* (* alloc_sta ) (int ,int *,int ) ;} ;


 int spin_lock_init (int *) ;
 void* stub1 (int ,int *,int ) ;

__attribute__((used)) static inline void *rate_control_alloc_sta(struct rate_control_ref *ref,
        struct sta_info *sta, gfp_t gfp)
{
 spin_lock_init(&sta->rate_ctrl_lock);
 return ref->ops->alloc_sta(ref->priv, &sta->sta, gfp);
}
