
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_inode_info {int target; } ;
struct inode {int dummy; } ;


 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 int jffs2_inode_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct jffs2_inode_info*) ;

__attribute__((used)) static void jffs2_free_inode(struct inode *inode)
{
 struct jffs2_inode_info *f = JFFS2_INODE_INFO(inode);

 kfree(f->target);
 kmem_cache_free(jffs2_inode_cachep, f);
}
