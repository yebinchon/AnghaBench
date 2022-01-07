
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct svc_fh {int dummy; } ;
struct super_block {TYPE_1__* s_export_op; } ;
struct pnfs_block_extent {int foff; scalar_t__ len; int es; int vol_id; int soff; } ;
struct nfsd4_layout_seg {int offset; scalar_t__ length; scalar_t__ iomode; } ;
struct nfsd4_layoutget {scalar_t__ lg_minlength; struct pnfs_block_extent* lg_content; struct nfsd4_layout_seg lg_seg; } ;
struct iomap {scalar_t__ length; int type; int offset; int addr; } ;
struct inode {struct super_block* i_sb; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* map_blocks ) (struct inode*,int,scalar_t__,struct iomap*,int,int*) ;} ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;




 scalar_t__ IOMODE_READ ;
 int IOMODE_RW ;
 int PNFS_BLOCK_INVALID_DATA ;
 int PNFS_BLOCK_NONE_DATA ;
 int PNFS_BLOCK_READWRITE_DATA ;
 int PNFS_BLOCK_READ_DATA ;
 int WARN (int,char*,int) ;
 int dprintk (char*,...) ;
 int i_blocksize (struct inode*) ;
 struct pnfs_block_extent* kzalloc (int,int ) ;
 int nfsd4_set_deviceid (int *,struct svc_fh const*,int) ;
 int nfserr_layoutunavailable ;
 int nfserrno (int) ;
 int stub1 (struct inode*,int,scalar_t__,struct iomap*,int,int*) ;

__attribute__((used)) static __be32
nfsd4_block_proc_layoutget(struct inode *inode, const struct svc_fh *fhp,
  struct nfsd4_layoutget *args)
{
 struct nfsd4_layout_seg *seg = &args->lg_seg;
 struct super_block *sb = inode->i_sb;
 u32 block_size = i_blocksize(inode);
 struct pnfs_block_extent *bex;
 struct iomap iomap;
 u32 device_generation = 0;
 int error;

 if (seg->offset & (block_size - 1)) {
  dprintk("pnfsd: I/O misaligned\n");
  goto out_layoutunavailable;
 }





 error = -ENOMEM;
 bex = kzalloc(sizeof(*bex), GFP_KERNEL);
 if (!bex)
  goto out_error;
 args->lg_content = bex;

 error = sb->s_export_op->map_blocks(inode, seg->offset, seg->length,
         &iomap, seg->iomode != IOMODE_READ,
         &device_generation);
 if (error) {
  if (error == -ENXIO)
   goto out_layoutunavailable;
  goto out_error;
 }

 if (iomap.length < args->lg_minlength) {
  dprintk("pnfsd: extent smaller than minlength\n");
  goto out_layoutunavailable;
 }

 switch (iomap.type) {
 case 129:
  if (seg->iomode == IOMODE_READ)
   bex->es = PNFS_BLOCK_READ_DATA;
  else
   bex->es = PNFS_BLOCK_READWRITE_DATA;
  bex->soff = iomap.addr;
  break;
 case 128:
  if (seg->iomode & IOMODE_RW) {



   if (args->lg_minlength == 0) {
    dprintk("pnfsd: no soup for you!\n");
    goto out_layoutunavailable;
   }

   bex->es = PNFS_BLOCK_INVALID_DATA;
   bex->soff = iomap.addr;
   break;
  }

 case 130:
  if (seg->iomode == IOMODE_READ) {
   bex->es = PNFS_BLOCK_NONE_DATA;
   break;
  }

 case 131:
 default:
  WARN(1, "pnfsd: filesystem returned %d extent\n", iomap.type);
  goto out_layoutunavailable;
 }

 error = nfsd4_set_deviceid(&bex->vol_id, fhp, device_generation);
 if (error)
  goto out_error;
 bex->foff = iomap.offset;
 bex->len = iomap.length;

 seg->offset = iomap.offset;
 seg->length = iomap.length;

 dprintk("GET: 0x%llx:0x%llx %d\n", bex->foff, bex->len, bex->es);
 return 0;

out_error:
 seg->length = 0;
 return nfserrno(error);
out_layoutunavailable:
 seg->length = 0;
 return nfserr_layoutunavailable;
}
