
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_7__ {TYPE_2__* plh_inode; } ;
struct nfs4_flexfile_layout {TYPE_3__ generic_hdr; } ;
struct nfs4_ff_layout_mirror {TYPE_4__* mirror_ds; int stateid; } ;
struct nfs4_ff_layout_ds_err {int status; int opnum; int deviceid; int stateid; void* length; void* offset; int list; } ;
typedef int gfp_t ;
typedef enum nfs_opnum4 { ____Placeholder_nfs_opnum4 } nfs_opnum4 ;
struct TYPE_5__ {int deviceid; } ;
struct TYPE_8__ {TYPE_1__ id_node; } ;
struct TYPE_6__ {int i_lock; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR_OR_NULL (TYPE_4__*) ;
 int NFS4_DEVICEID4_SIZE ;
 int ff_layout_add_ds_error_locked (struct nfs4_flexfile_layout*,struct nfs4_ff_layout_ds_err*) ;
 struct nfs4_ff_layout_ds_err* kmalloc (int,int ) ;
 int memcpy (int *,int *,int ) ;
 int nfs4_stateid_copy (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ff_layout_track_ds_error(struct nfs4_flexfile_layout *flo,
        struct nfs4_ff_layout_mirror *mirror, u64 offset,
        u64 length, int status, enum nfs_opnum4 opnum,
        gfp_t gfp_flags)
{
 struct nfs4_ff_layout_ds_err *dserr;

 if (status == 0)
  return 0;

 if (IS_ERR_OR_NULL(mirror->mirror_ds))
  return -EINVAL;

 dserr = kmalloc(sizeof(*dserr), gfp_flags);
 if (!dserr)
  return -ENOMEM;

 INIT_LIST_HEAD(&dserr->list);
 dserr->offset = offset;
 dserr->length = length;
 dserr->status = status;
 dserr->opnum = opnum;
 nfs4_stateid_copy(&dserr->stateid, &mirror->stateid);
 memcpy(&dserr->deviceid, &mirror->mirror_ds->id_node.deviceid,
        NFS4_DEVICEID4_SIZE);

 spin_lock(&flo->generic_hdr.plh_inode->i_lock);
 ff_layout_add_ds_error_locked(flo, dserr);
 spin_unlock(&flo->generic_hdr.plh_inode->i_lock);
 return 0;
}
