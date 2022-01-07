
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pnfs_layout_segment {int dummy; } ;
struct pnfs_layout_hdr {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct nfs4_filelayout_segment {int dummy; } ;
struct inode {int dummy; } ;
typedef int loff_t ;
typedef int gfp_t ;
typedef enum pnfs_iomode { ____Placeholder_pnfs_iomode } pnfs_iomode ;
struct TYPE_2__ {struct pnfs_layout_hdr* layout; } ;


 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;
 scalar_t__ IS_ERR_OR_NULL (struct pnfs_layout_segment*) ;
 TYPE_1__* NFS_I (struct inode*) ;
 int filelayout_check_deviceid (struct pnfs_layout_hdr*,struct nfs4_filelayout_segment*,int ) ;
 int pnfs_put_lseg (struct pnfs_layout_segment*) ;
 struct pnfs_layout_segment* pnfs_update_layout (struct inode*,struct nfs_open_context*,int ,int ,int,int,int ) ;

__attribute__((used)) static struct pnfs_layout_segment *
fl_pnfs_update_layout(struct inode *ino,
        struct nfs_open_context *ctx,
        loff_t pos,
        u64 count,
        enum pnfs_iomode iomode,
        bool strict_iomode,
        gfp_t gfp_flags)
{
 struct pnfs_layout_segment *lseg = ((void*)0);
 struct pnfs_layout_hdr *lo;
 struct nfs4_filelayout_segment *fl;
 int status;

 lseg = pnfs_update_layout(ino, ctx, pos, count, iomode, strict_iomode,
      gfp_flags);
 if (IS_ERR_OR_NULL(lseg))
  goto out;

 lo = NFS_I(ino)->layout;
 fl = FILELAYOUT_LSEG(lseg);

 status = filelayout_check_deviceid(lo, fl, gfp_flags);
 if (status) {
  pnfs_put_lseg(lseg);
  lseg = ((void*)0);
 }
out:
 return lseg;
}
