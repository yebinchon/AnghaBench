
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocksize; int ns_sem; int ns_mount_state; int ns_next_generation; int ns_blocksize_bits; } ;
struct super_block {int s_blocksize; int s_blocksize_bits; int s_maxbytes; int s_bdev; } ;
struct nilfs_super_block {int s_state; int s_log_block_size; } ;


 int BLOCK_SIZE ;
 int EINVAL ;
 int KERN_ERR ;
 int NILFS_MAX_BLOCK_SIZE ;
 int NILFS_MIN_BLOCK_SIZE ;
 int bdev_logical_block_size (int ) ;
 int down_write (int *) ;
 int get_random_bytes (int *,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int nilfs_check_feature_compatibility (struct super_block*,struct nilfs_super_block*) ;
 int nilfs_load_super_block (struct the_nilfs*,struct super_block*,int,struct nilfs_super_block**) ;
 int nilfs_max_size (int ) ;
 int nilfs_msg (struct super_block*,int ,char*,...) ;
 int nilfs_release_super_block (struct the_nilfs*) ;
 int nilfs_store_disk_layout (struct the_nilfs*,struct nilfs_super_block*) ;
 int nilfs_store_log_cursor (struct the_nilfs*,struct nilfs_super_block*) ;
 int nilfs_store_magic_and_option (struct super_block*,struct nilfs_super_block*,char*) ;
 int nilfs_sysfs_create_device_group (struct super_block*) ;
 int sb_min_blocksize (struct super_block*,int) ;
 int sb_set_blocksize (struct super_block*,int) ;
 int set_nilfs_init (struct the_nilfs*) ;
 int up_write (int *) ;

int init_nilfs(struct the_nilfs *nilfs, struct super_block *sb, char *data)
{
 struct nilfs_super_block *sbp;
 int blocksize;
 int err;

 down_write(&nilfs->ns_sem);

 blocksize = sb_min_blocksize(sb, NILFS_MIN_BLOCK_SIZE);
 if (!blocksize) {
  nilfs_msg(sb, KERN_ERR, "unable to set blocksize");
  err = -EINVAL;
  goto out;
 }
 err = nilfs_load_super_block(nilfs, sb, blocksize, &sbp);
 if (err)
  goto out;

 err = nilfs_store_magic_and_option(sb, sbp, data);
 if (err)
  goto failed_sbh;

 err = nilfs_check_feature_compatibility(sb, sbp);
 if (err)
  goto failed_sbh;

 blocksize = BLOCK_SIZE << le32_to_cpu(sbp->s_log_block_size);
 if (blocksize < NILFS_MIN_BLOCK_SIZE ||
     blocksize > NILFS_MAX_BLOCK_SIZE) {
  nilfs_msg(sb, KERN_ERR,
     "couldn't mount because of unsupported filesystem blocksize %d",
     blocksize);
  err = -EINVAL;
  goto failed_sbh;
 }
 if (sb->s_blocksize != blocksize) {
  int hw_blocksize = bdev_logical_block_size(sb->s_bdev);

  if (blocksize < hw_blocksize) {
   nilfs_msg(sb, KERN_ERR,
      "blocksize %d too small for device (sector-size = %d)",
      blocksize, hw_blocksize);
   err = -EINVAL;
   goto failed_sbh;
  }
  nilfs_release_super_block(nilfs);
  sb_set_blocksize(sb, blocksize);

  err = nilfs_load_super_block(nilfs, sb, blocksize, &sbp);
  if (err)
   goto out;




 }
 nilfs->ns_blocksize_bits = sb->s_blocksize_bits;
 nilfs->ns_blocksize = blocksize;

 get_random_bytes(&nilfs->ns_next_generation,
    sizeof(nilfs->ns_next_generation));

 err = nilfs_store_disk_layout(nilfs, sbp);
 if (err)
  goto failed_sbh;

 sb->s_maxbytes = nilfs_max_size(sb->s_blocksize_bits);

 nilfs->ns_mount_state = le16_to_cpu(sbp->s_state);

 err = nilfs_store_log_cursor(nilfs, sbp);
 if (err)
  goto failed_sbh;

 err = nilfs_sysfs_create_device_group(sb);
 if (err)
  goto failed_sbh;

 set_nilfs_init(nilfs);
 err = 0;
 out:
 up_write(&nilfs->ns_sem);
 return err;

 failed_sbh:
 nilfs_release_super_block(nilfs);
 goto out;
}
