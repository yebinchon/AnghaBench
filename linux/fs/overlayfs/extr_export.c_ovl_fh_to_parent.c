
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;


 int EACCES ;
 struct dentry* ERR_PTR (int ) ;
 int pr_warn_ratelimited (char*) ;

__attribute__((used)) static struct dentry *ovl_fh_to_parent(struct super_block *sb, struct fid *fid,
           int fh_len, int fh_type)
{
 pr_warn_ratelimited("overlayfs: connectable file handles not supported; use 'no_subtree_check' exportfs option.\n");
 return ERR_PTR(-EACCES);
}
