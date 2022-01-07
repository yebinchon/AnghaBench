
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int gfs2_lookupi (int ,int *,int) ;
 int gfs2_qdotdot ;

__attribute__((used)) static struct dentry *gfs2_get_parent(struct dentry *child)
{
 return d_obtain_alias(gfs2_lookupi(d_inode(child), &gfs2_qdotdot, 1));
}
