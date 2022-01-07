
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int GFS2_I (struct inode*) ;
 int gfs2_inode_cachep ;
 int kmem_cache_free (int ,int ) ;

__attribute__((used)) static void gfs2_free_inode(struct inode *inode)
{
 kmem_cache_free(gfs2_inode_cachep, GFS2_I(inode));
}
