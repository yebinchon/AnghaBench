
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_hdr {int dummy; } ;
struct pnfs_ds_commit_info {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct pnfs_ds_commit_info commit_info; } ;
struct TYPE_3__ {struct pnfs_layout_hdr* layout; } ;


 TYPE_2__* FF_LAYOUT_FROM_HDR (struct pnfs_layout_hdr*) ;
 TYPE_1__* NFS_I (struct inode*) ;

__attribute__((used)) static struct pnfs_ds_commit_info *
ff_layout_get_ds_info(struct inode *inode)
{
 struct pnfs_layout_hdr *layout = NFS_I(inode)->layout;

 if (layout == ((void*)0))
  return ((void*)0);

 return &FF_LAYOUT_FROM_HDR(layout)->commit_info;
}
