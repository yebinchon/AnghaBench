
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {TYPE_1__* dbg; } ;
struct TYPE_2__ {int dfs_dir; } ;


 int debugfs_remove_recursive (int ) ;

void dbg_debugfs_exit_fs(struct ubifs_info *c)
{
 debugfs_remove_recursive(c->dbg->dfs_dir);
}
