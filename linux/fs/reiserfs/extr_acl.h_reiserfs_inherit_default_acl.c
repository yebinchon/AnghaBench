
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static inline int
reiserfs_inherit_default_acl(struct reiserfs_transaction_handle *th,
        const struct inode *dir, struct dentry *dentry,
        struct inode *inode)
{
 return 0;
}
