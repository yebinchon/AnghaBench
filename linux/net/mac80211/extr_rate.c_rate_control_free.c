
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct TYPE_4__ {int * rcdir; } ;
struct ieee80211_local {TYPE_2__ debugfs; } ;
struct TYPE_3__ {int (* free ) (int ) ;} ;


 int debugfs_remove_recursive (int *) ;
 int kfree (struct rate_control_ref*) ;
 int stub1 (int ) ;

__attribute__((used)) static void rate_control_free(struct ieee80211_local *local,
         struct rate_control_ref *ctrl_ref)
{
 ctrl_ref->ops->free(ctrl_ref->priv);






 kfree(ctrl_ref);
}
