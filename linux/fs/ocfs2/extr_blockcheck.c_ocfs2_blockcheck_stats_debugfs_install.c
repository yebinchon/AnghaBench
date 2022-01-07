
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_blockcheck_stats {int dummy; } ;
struct dentry {int dummy; } ;


 int ocfs2_blockcheck_debug_install (struct ocfs2_blockcheck_stats*,struct dentry*) ;

void ocfs2_blockcheck_stats_debugfs_install(struct ocfs2_blockcheck_stats *stats,
         struct dentry *parent)
{
 ocfs2_blockcheck_debug_install(stats, parent);
}
