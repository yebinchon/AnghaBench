
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_inode {int __upperdentry; } ;
struct dentry {int dummy; } ;


 struct dentry* READ_ONCE (int ) ;

__attribute__((used)) static inline struct dentry *ovl_upperdentry_dereference(struct ovl_inode *oi)
{
 return READ_ONCE(oi->__upperdentry);
}
