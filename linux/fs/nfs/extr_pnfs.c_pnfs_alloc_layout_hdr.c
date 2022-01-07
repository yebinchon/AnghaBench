
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layoutdriver_type {struct pnfs_layout_hdr* (* alloc_layout_hdr ) (struct inode*,int ) ;} ;
struct pnfs_layout_hdr {int dummy; } ;
struct inode {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct pnfs_layoutdriver_type* pnfs_curr_ld; } ;


 TYPE_1__* NFS_SERVER (struct inode*) ;
 struct pnfs_layout_hdr* stub1 (struct inode*,int ) ;

__attribute__((used)) static struct pnfs_layout_hdr *
pnfs_alloc_layout_hdr(struct inode *ino, gfp_t gfp_flags)
{
 struct pnfs_layoutdriver_type *ld = NFS_SERVER(ino)->pnfs_curr_ld;
 return ld->alloc_layout_hdr(ino, gfp_flags);
}
