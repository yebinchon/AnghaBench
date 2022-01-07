
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int * d_fsdata; int * d_op; } ;


 int mntns_operations ;
 int ns_dentry_operations ;

__attribute__((used)) static bool is_mnt_ns_file(struct dentry *dentry)
{

 return dentry->d_op == &ns_dentry_operations &&
        dentry->d_fsdata == &mntns_operations;
}
