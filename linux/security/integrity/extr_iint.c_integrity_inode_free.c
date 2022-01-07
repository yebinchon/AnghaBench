
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int rb_node; } ;
struct inode {int dummy; } ;


 int IS_IMA (struct inode*) ;
 struct integrity_iint_cache* __integrity_iint_find (struct inode*) ;
 int iint_free (struct integrity_iint_cache*) ;
 int integrity_iint_lock ;
 int integrity_iint_tree ;
 int rb_erase (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void integrity_inode_free(struct inode *inode)
{
 struct integrity_iint_cache *iint;

 if (!IS_IMA(inode))
  return;

 write_lock(&integrity_iint_lock);
 iint = __integrity_iint_find(inode);
 rb_erase(&iint->rb_node, &integrity_iint_tree);
 write_unlock(&integrity_iint_lock);

 iint_free(iint);
}
