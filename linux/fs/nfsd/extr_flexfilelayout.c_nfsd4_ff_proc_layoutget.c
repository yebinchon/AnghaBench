
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u32 ;
struct TYPE_3__ {int fh_base; int fh_size; } ;
struct svc_fh {TYPE_1__ fh_handle; } ;
struct TYPE_4__ {int size; int data; } ;
struct pnfs_ff_layout {int flags; TYPE_2__ fh; int deviceid; int gid; int uid; } ;
struct nfsd4_layout_seg {scalar_t__ iomode; scalar_t__ length; scalar_t__ offset; } ;
struct nfsd4_layoutget {struct pnfs_ff_layout* lg_content; struct nfsd4_layout_seg lg_seg; } ;
struct inode {int i_gid; int i_uid; } ;
typedef int __be32 ;


 int ENOMEM ;
 int FF_FLAGS_NO_IO_THRU_MDS ;
 int FF_FLAGS_NO_LAYOUTCOMMIT ;
 int FF_FLAGS_NO_READ_IO ;
 int GFP_KERNEL ;
 scalar_t__ IOMODE_READ ;
 scalar_t__ NFS4_MAX_UINT64 ;
 int dprintk (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ from_kuid (int *,int ) ;
 int init_user_ns ;
 struct pnfs_ff_layout* kzalloc (int,int ) ;
 int make_kuid (int *,scalar_t__) ;
 int memcpy (int ,int *,int ) ;
 int nfsd4_set_deviceid (int *,struct svc_fh const*,int ) ;
 int nfserrno (int) ;

__attribute__((used)) static __be32
nfsd4_ff_proc_layoutget(struct inode *inode, const struct svc_fh *fhp,
  struct nfsd4_layoutget *args)
{
 struct nfsd4_layout_seg *seg = &args->lg_seg;
 u32 device_generation = 0;
 int error;
 uid_t u;

 struct pnfs_ff_layout *fl;






 error = -ENOMEM;
 fl = kzalloc(sizeof(*fl), GFP_KERNEL);
 if (!fl)
  goto out_error;
 args->lg_content = fl;






 fl->flags = FF_FLAGS_NO_LAYOUTCOMMIT | FF_FLAGS_NO_IO_THRU_MDS |
      FF_FLAGS_NO_READ_IO;


 if (seg->iomode == IOMODE_READ) {
  u = from_kuid(&init_user_ns, inode->i_uid) + 1;
  fl->uid = make_kuid(&init_user_ns, u);
 } else
  fl->uid = inode->i_uid;
 fl->gid = inode->i_gid;

 error = nfsd4_set_deviceid(&fl->deviceid, fhp, device_generation);
 if (error)
  goto out_error;

 fl->fh.size = fhp->fh_handle.fh_size;
 memcpy(fl->fh.data, &fhp->fh_handle.fh_base, fl->fh.size);


 seg->offset = 0;
 seg->length = NFS4_MAX_UINT64;

 dprintk("GET: 0x%llx:0x%llx %d\n", seg->offset, seg->length,
  seg->iomode);
 return 0;

out_error:
 seg->length = 0;
 return nfserrno(error);
}
