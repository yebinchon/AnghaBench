
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layout_hdr {int plh_bulk_destroy; } ;
struct list_head {int dummy; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {struct pnfs_layout_hdr* layout; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int list_add (int *,struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 int pnfs_get_layout_hdr (struct pnfs_layout_hdr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool
pnfs_layout_add_bulk_destroy_list(struct inode *inode,
  struct list_head *layout_list)
{
 struct pnfs_layout_hdr *lo;
 bool ret = 0;

 spin_lock(&inode->i_lock);
 lo = NFS_I(inode)->layout;
 if (lo != ((void*)0) && list_empty(&lo->plh_bulk_destroy)) {
  pnfs_get_layout_hdr(lo);
  list_add(&lo->plh_bulk_destroy, layout_list);
  ret = 1;
 }
 spin_unlock(&inode->i_lock);
 return ret;
}
