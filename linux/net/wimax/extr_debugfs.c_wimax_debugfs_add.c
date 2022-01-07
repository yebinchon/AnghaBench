
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {struct dentry* debugfs_dentry; struct net_device* net_dev; } ;
struct net_device {char* name; } ;
struct dentry {int dummy; } ;
typedef int buf ;


 int d_level_register_debugfs (char*,int ,struct dentry*) ;
 int debugfs ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 int id_table ;
 int op_msg ;
 int op_reset ;
 int op_rfkill ;
 int op_state_get ;
 int snprintf (char*,int,char*,char*) ;
 int stack ;

void wimax_debugfs_add(struct wimax_dev *wimax_dev)
{
 struct net_device *net_dev = wimax_dev->net_dev;
 struct dentry *dentry;
 char buf[128];

 snprintf(buf, sizeof(buf), "wimax:%s", net_dev->name);
 dentry = debugfs_create_dir(buf, ((void*)0));
 wimax_dev->debugfs_dentry = dentry;

 d_level_register_debugfs("wimax_dl_", debugfs, dentry);
 d_level_register_debugfs("wimax_dl_", id_table, dentry);
 d_level_register_debugfs("wimax_dl_", op_msg, dentry);
 d_level_register_debugfs("wimax_dl_", op_reset, dentry);
 d_level_register_debugfs("wimax_dl_", op_rfkill, dentry);
 d_level_register_debugfs("wimax_dl_", op_state_get, dentry);
 d_level_register_debugfs("wimax_dl_", stack, dentry);
}
