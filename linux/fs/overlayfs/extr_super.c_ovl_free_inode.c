
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_inode {int lock; int redirect; } ;
struct inode {int dummy; } ;


 struct ovl_inode* OVL_I (struct inode*) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct ovl_inode*) ;
 int mutex_destroy (int *) ;
 int ovl_inode_cachep ;

__attribute__((used)) static void ovl_free_inode(struct inode *inode)
{
 struct ovl_inode *oi = OVL_I(inode);

 kfree(oi->redirect);
 mutex_destroy(&oi->lock);
 kmem_cache_free(ovl_inode_cachep, oi);
}
