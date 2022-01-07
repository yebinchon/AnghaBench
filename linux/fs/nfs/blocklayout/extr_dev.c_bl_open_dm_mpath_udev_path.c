
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int designator; int designator_len; int designator_type; } ;
struct pnfs_block_volume {TYPE_1__ scsi; } ;
struct block_device {int dummy; } ;


 int ENOMEM ;
 struct block_device* ERR_PTR (int ) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 struct block_device* blkdev_get_by_path (char const*,int,int *) ;
 char* kasprintf (int ,char*,int ,int ,int ) ;
 int kfree (char const*) ;

__attribute__((used)) static struct block_device *
bl_open_dm_mpath_udev_path(struct pnfs_block_volume *v)
{
 struct block_device *bdev;
 const char *devname;

 devname = kasprintf(GFP_KERNEL,
   "/dev/disk/by-id/dm-uuid-mpath-%d%*phN",
   v->scsi.designator_type,
   v->scsi.designator_len, v->scsi.designator);
 if (!devname)
  return ERR_PTR(-ENOMEM);

 bdev = blkdev_get_by_path(devname, FMODE_READ | FMODE_WRITE, ((void*)0));
 kfree(devname);
 return bdev;
}
