
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_flags; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int i_lock; } ;


 int GFP_KERNEL ;
 int NFS_LAYOUT_FIRST_LAYOUTGET ;
 int NFS_LAYOUT_INVALID_STID ;
 int NFS_LAYOUT_RETURN ;
 int NFS_SERVER (struct inode*) ;
 int _add_to_server_list (struct pnfs_layout_hdr*,int ) ;
 int nfs_layoutget_begin (struct pnfs_layout_hdr*) ;
 struct pnfs_layout_hdr* pnfs_find_alloc_layout (struct inode*,struct nfs_open_context*,int ) ;
 scalar_t__ pnfs_layoutgets_blocked (struct pnfs_layout_hdr*) ;
 int pnfs_put_layout_hdr (struct pnfs_layout_hdr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct pnfs_layout_hdr *
_pnfs_grab_empty_layout(struct inode *ino, struct nfs_open_context *ctx)
{
 struct pnfs_layout_hdr *lo;

 spin_lock(&ino->i_lock);
 lo = pnfs_find_alloc_layout(ino, ctx, GFP_KERNEL);
 if (!lo)
  goto out_unlock;
 if (!test_bit(NFS_LAYOUT_INVALID_STID, &lo->plh_flags))
  goto out_unlock;
 if (test_bit(NFS_LAYOUT_RETURN, &lo->plh_flags))
  goto out_unlock;
 if (pnfs_layoutgets_blocked(lo))
  goto out_unlock;
 if (test_and_set_bit(NFS_LAYOUT_FIRST_LAYOUTGET, &lo->plh_flags))
  goto out_unlock;
 nfs_layoutget_begin(lo);
 spin_unlock(&ino->i_lock);
 _add_to_server_list(lo, NFS_SERVER(ino));
 return lo;

out_unlock:
 spin_unlock(&ino->i_lock);
 pnfs_put_layout_hdr(lo);
 return ((void*)0);
}
