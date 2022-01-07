
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int designator; int designator_len; } ;
struct pnfs_block_volume {TYPE_1__ scsi; } ;
struct block_device {int dummy; } ;


 int ENOMEM ;
 struct block_device* ERR_PTR (int ) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int PTR_ERR (struct block_device*) ;
 struct block_device* blkdev_get_by_path (char const*,int,int *) ;
 char* kasprintf (int ,char*,int ,int ) ;
 int kfree (char const*) ;
 int pr_warn (char*,char const*,int ) ;

__attribute__((used)) static struct block_device *
bl_open_udev_path(struct pnfs_block_volume *v)
{
 struct block_device *bdev;
 const char *devname;

 devname = kasprintf(GFP_KERNEL, "/dev/disk/by-id/wwn-0x%*phN",
    v->scsi.designator_len, v->scsi.designator);
 if (!devname)
  return ERR_PTR(-ENOMEM);

 bdev = blkdev_get_by_path(devname, FMODE_READ | FMODE_WRITE, ((void*)0));
 if (IS_ERR(bdev)) {
  pr_warn("pNFS: failed to open device %s (%ld)\n",
   devname, PTR_ERR(bdev));
 }

 kfree(devname);
 return bdev;
}
