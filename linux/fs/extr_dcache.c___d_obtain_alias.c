
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct dentry* __d_instantiate_anon (struct dentry*,struct inode*,int) ;
 struct dentry* d_alloc_anon (int ) ;
 struct dentry* d_find_any_alias (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct dentry *__d_obtain_alias(struct inode *inode, bool disconnected)
{
 struct dentry *tmp;
 struct dentry *res;

 if (!inode)
  return ERR_PTR(-ESTALE);
 if (IS_ERR(inode))
  return ERR_CAST(inode);

 res = d_find_any_alias(inode);
 if (res)
  goto out_iput;

 tmp = d_alloc_anon(inode->i_sb);
 if (!tmp) {
  res = ERR_PTR(-ENOMEM);
  goto out_iput;
 }

 return __d_instantiate_anon(tmp, inode, disconnected);

out_iput:
 iput(inode);
 return res;
}
