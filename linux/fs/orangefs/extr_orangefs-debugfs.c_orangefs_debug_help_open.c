
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {int i_private; } ;
struct file {scalar_t__ private_data; } ;


 int ENODEV ;
 int GOSSIP_DEBUGFS_DEBUG ;
 int gossip_debug (int ,char*,...) ;
 int help_debug_ops ;
 scalar_t__ orangefs_debug_disabled ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int orangefs_debug_help_open(struct inode *inode, struct file *file)
{
 int rc = -ENODEV;
 int ret;

 gossip_debug(GOSSIP_DEBUGFS_DEBUG,
       "orangefs_debug_help_open: start\n");

 if (orangefs_debug_disabled)
  goto out;

 ret = seq_open(file, &help_debug_ops);
 if (ret)
  goto out;

 ((struct seq_file *)(file->private_data))->private = inode->i_private;

 rc = 0;

out:
 gossip_debug(GOSSIP_DEBUGFS_DEBUG,
       "orangefs_debug_help_open: rc:%d:\n",
       rc);
 return rc;
}
