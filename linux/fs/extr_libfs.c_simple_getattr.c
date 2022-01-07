
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int blocks; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct TYPE_2__ {int nrpages; } ;


 int PAGE_SHIFT ;
 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

int simple_getattr(const struct path *path, struct kstat *stat,
     u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 generic_fillattr(inode, stat);
 stat->blocks = inode->i_mapping->nrpages << (PAGE_SHIFT - 9);
 return 0;
}
