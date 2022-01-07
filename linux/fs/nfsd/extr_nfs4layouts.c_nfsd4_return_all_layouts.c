
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_layout_stateid {int ls_lock; int ls_layouts; } ;
struct list_head {int dummy; } ;


 int list_splice_init (int *,struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfsd4_return_all_layouts(struct nfs4_layout_stateid *ls,
  struct list_head *reaplist)
{
 spin_lock(&ls->ls_lock);
 list_splice_init(&ls->ls_layouts, reaplist);
 spin_unlock(&ls->ls_lock);
}
