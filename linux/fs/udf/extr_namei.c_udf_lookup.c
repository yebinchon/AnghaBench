
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct kernel_lb_addr {int dummy; } ;
struct TYPE_3__ {int extLocation; } ;
struct inode {int i_sb; TYPE_1__ icb; } ;
struct fileIdentDesc {int i_sb; TYPE_1__ icb; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; } ;


 int ENAMETOOLONG ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ UDF_NAME_LEN ;
 int brelse (scalar_t__) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct kernel_lb_addr lelb_to_cpu (int ) ;
 struct inode* udf_find_entry (struct inode*,TYPE_2__*,struct udf_fileident_bh*,struct inode*) ;
 struct inode* udf_iget (int ,struct kernel_lb_addr*) ;

__attribute__((used)) static struct dentry *udf_lookup(struct inode *dir, struct dentry *dentry,
     unsigned int flags)
{
 struct inode *inode = ((void*)0);
 struct fileIdentDesc cfi;
 struct udf_fileident_bh fibh;
 struct fileIdentDesc *fi;

 if (dentry->d_name.len > UDF_NAME_LEN)
  return ERR_PTR(-ENAMETOOLONG);

 fi = udf_find_entry(dir, &dentry->d_name, &fibh, &cfi);
 if (IS_ERR(fi))
  return ERR_CAST(fi);

 if (fi) {
  struct kernel_lb_addr loc;

  if (fibh.sbh != fibh.ebh)
   brelse(fibh.ebh);
  brelse(fibh.sbh);

  loc = lelb_to_cpu(cfi.icb.extLocation);
  inode = udf_iget(dir->i_sb, &loc);
  if (IS_ERR(inode))
   return ERR_CAST(inode);
 }

 return d_splice_alias(inode, dentry);
}
