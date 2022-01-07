
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_flexfile_layout {int generic_hdr; } ;
struct nfs42_layoutstat_args {int * devinfo; int num_dev; TYPE_2__* inode; } ;
struct TYPE_4__ {int i_lock; } ;
struct TYPE_3__ {int layout; } ;


 int ENOENT ;
 int ENOMEM ;
 struct nfs4_flexfile_layout* FF_LAYOUT_FROM_HDR (int ) ;
 int GFP_NOIO ;
 TYPE_1__* NFS_I (TYPE_2__*) ;
 int PNFS_LAYOUTSTATS_MAXDEV ;
 int ff_layout_mirror_prepare_stats (int *,int *,int const) ;
 int kfree (int *) ;
 int * kmalloc_array (int const,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
ff_layout_prepare_layoutstats(struct nfs42_layoutstat_args *args)
{
 struct nfs4_flexfile_layout *ff_layout;
 const int dev_count = PNFS_LAYOUTSTATS_MAXDEV;


 args->devinfo = kmalloc_array(dev_count, sizeof(*args->devinfo), GFP_NOIO);
 if (!args->devinfo)
  return -ENOMEM;

 spin_lock(&args->inode->i_lock);
 ff_layout = FF_LAYOUT_FROM_HDR(NFS_I(args->inode)->layout);
 args->num_dev = ff_layout_mirror_prepare_stats(&ff_layout->generic_hdr,
   &args->devinfo[0], dev_count);
 spin_unlock(&args->inode->i_lock);
 if (!args->num_dev) {
  kfree(args->devinfo);
  args->devinfo = ((void*)0);
  return -ENOENT;
 }

 return 0;
}
