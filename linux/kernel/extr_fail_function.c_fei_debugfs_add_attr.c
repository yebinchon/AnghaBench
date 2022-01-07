
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int symbol_name; } ;
struct fei_attr {TYPE_1__ kp; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct fei_attr*,int *) ;
 int fei_debugfs_dir ;
 int fei_retval_ops ;

__attribute__((used)) static void fei_debugfs_add_attr(struct fei_attr *attr)
{
 struct dentry *dir;

 dir = debugfs_create_dir(attr->kp.symbol_name, fei_debugfs_dir);

 debugfs_create_file("retval", 0600, dir, attr, &fei_retval_ops);
}
