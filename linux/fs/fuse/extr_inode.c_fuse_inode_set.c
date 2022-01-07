
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int nodeid; } ;


 TYPE_1__* get_fuse_inode (struct inode*) ;

__attribute__((used)) static int fuse_inode_set(struct inode *inode, void *_nodeidp)
{
 u64 nodeid = *(u64 *) _nodeidp;
 get_fuse_inode(inode)->nodeid = nodeid;
 return 0;
}
