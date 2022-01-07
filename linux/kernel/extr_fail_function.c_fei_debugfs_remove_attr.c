
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int symbol_name; } ;
struct fei_attr {TYPE_1__ kp; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_lookup (int ,int ) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int fei_debugfs_dir ;

__attribute__((used)) static void fei_debugfs_remove_attr(struct fei_attr *attr)
{
 struct dentry *dir;

 dir = debugfs_lookup(attr->kp.symbol_name, fei_debugfs_dir);
 debugfs_remove_recursive(dir);
}
