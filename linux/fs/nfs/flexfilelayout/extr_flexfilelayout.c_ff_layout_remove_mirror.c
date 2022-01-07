
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_ff_layout_mirror {TYPE_1__* layout; int mirrors; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {struct inode* plh_inode; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
ff_layout_remove_mirror(struct nfs4_ff_layout_mirror *mirror)
{
 struct inode *inode;
 if (mirror->layout == ((void*)0))
  return;
 inode = mirror->layout->plh_inode;
 spin_lock(&inode->i_lock);
 list_del(&mirror->mirrors);
 spin_unlock(&inode->i_lock);
 mirror->layout = ((void*)0);
}
