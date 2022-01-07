
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_segs; int plh_refcount; struct inode* plh_inode; } ;
struct inode {int i_lock; } ;


 int WARN_ONCE (int,char*) ;
 int list_empty (int *) ;
 int pnfs_detach_layout_hdr (struct pnfs_layout_hdr*) ;
 int pnfs_free_layout_hdr (struct pnfs_layout_hdr*) ;
 int pnfs_layoutreturn_before_put_layout_hdr (struct pnfs_layout_hdr*) ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

void
pnfs_put_layout_hdr(struct pnfs_layout_hdr *lo)
{
 struct inode *inode;

 if (!lo)
  return;
 inode = lo->plh_inode;
 pnfs_layoutreturn_before_put_layout_hdr(lo);

 if (refcount_dec_and_lock(&lo->plh_refcount, &inode->i_lock)) {
  if (!list_empty(&lo->plh_segs))
   WARN_ONCE(1, "NFS: BUG unfreed layout segments.\n");
  pnfs_detach_layout_hdr(lo);
  spin_unlock(&inode->i_lock);
  pnfs_free_layout_hdr(lo);
 }
}
