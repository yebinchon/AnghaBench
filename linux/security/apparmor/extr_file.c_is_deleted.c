
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_nlink; } ;


 TYPE_1__* d_backing_inode (struct dentry*) ;
 scalar_t__ d_unlinked (struct dentry*) ;

__attribute__((used)) static inline bool is_deleted(struct dentry *dentry)
{
 if (d_unlinked(dentry) && d_backing_inode(dentry)->i_nlink == 0)
  return 1;
 return 0;
}
