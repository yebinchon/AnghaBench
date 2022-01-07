
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int rs_node; } ;
struct gfs2_inode {struct inode i_inode; scalar_t__ i_rahead; TYPE_1__ i_res; int * i_gl; scalar_t__ i_flags; } ;


 int GFP_KERNEL ;
 int RB_CLEAR_NODE (int *) ;
 int gfs2_inode_cachep ;
 struct gfs2_inode* kmem_cache_alloc (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static struct inode *gfs2_alloc_inode(struct super_block *sb)
{
 struct gfs2_inode *ip;

 ip = kmem_cache_alloc(gfs2_inode_cachep, GFP_KERNEL);
 if (!ip)
  return ((void*)0);
 ip->i_flags = 0;
 ip->i_gl = ((void*)0);
 memset(&ip->i_res, 0, sizeof(ip->i_res));
 RB_CLEAR_NODE(&ip->i_res.rs_node);
 ip->i_rahead = 0;
 return &ip->i_inode;
}
