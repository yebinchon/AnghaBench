
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_parent; } ;
struct TYPE_2__ {int d_inode; } ;


 int inode_unlock (int ) ;

__attribute__((used)) static struct dentry *end_creating(struct dentry *dentry)
{
 inode_unlock(dentry->d_parent->d_inode);
 return dentry;
}
