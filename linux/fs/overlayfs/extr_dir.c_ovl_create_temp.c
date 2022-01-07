
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_cattr {int dummy; } ;
struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 struct dentry* ovl_create_real (int ,int ,struct ovl_cattr*) ;
 int ovl_lookup_temp (struct dentry*) ;

struct dentry *ovl_create_temp(struct dentry *workdir, struct ovl_cattr *attr)
{
 return ovl_create_real(d_inode(workdir), ovl_lookup_temp(workdir),
          attr);
}
