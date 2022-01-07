
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {TYPE_1__* s_bdi; scalar_t__ s_bdev; } ;
struct fuse_conn {int dev; } ;
struct TYPE_4__ {int capabilities; int ra_pages; } ;


 int BDI_CAP_NO_ACCT_WB ;
 int BDI_CAP_STRICTLIMIT ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int VM_READAHEAD_PAGES ;
 int bdi_put (TYPE_1__*) ;
 int bdi_set_max_ratio (TYPE_1__*,int) ;
 TYPE_1__ noop_backing_dev_info ;
 int super_setup_bdi_name (struct super_block*,char*,int ,int ,char*) ;

__attribute__((used)) static int fuse_bdi_init(struct fuse_conn *fc, struct super_block *sb)
{
 int err;
 char *suffix = "";

 if (sb->s_bdev) {
  suffix = "-fuseblk";




  bdi_put(sb->s_bdi);
  sb->s_bdi = &noop_backing_dev_info;
 }
 err = super_setup_bdi_name(sb, "%u:%u%s", MAJOR(fc->dev),
       MINOR(fc->dev), suffix);
 if (err)
  return err;

 sb->s_bdi->ra_pages = VM_READAHEAD_PAGES;

 sb->s_bdi->capabilities = BDI_CAP_NO_ACCT_WB | BDI_CAP_STRICTLIMIT;
 bdi_set_max_ratio(sb->s_bdi, 1);

 return 0;
}
