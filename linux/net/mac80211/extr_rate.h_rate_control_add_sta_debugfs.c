
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {scalar_t__ debugfs_dir; int rate_ctrl_priv; struct rate_control_ref* rate_ctrl; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* add_sta_debugfs ) (int ,int ,scalar_t__) ;} ;


 int stub1 (int ,int ,scalar_t__) ;

__attribute__((used)) static inline void rate_control_add_sta_debugfs(struct sta_info *sta)
{






}
