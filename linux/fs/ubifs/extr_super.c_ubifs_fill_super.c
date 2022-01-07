
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vol_id; int ubi_num; } ;
struct ubifs_info {scalar_t__ max_inode_sz; struct inode* ubi; int umount_mutex; TYPE_1__ vi; struct super_block* vfs_sb; } ;
struct super_block {scalar_t__ s_maxbytes; int s_root; int s_xattr; int * s_op; int s_blocksize_bits; int s_blocksize; int s_magic; struct ubifs_info* s_fs_info; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ MAX_LFS_FILESIZE ;
 int PTR_ERR (struct inode*) ;
 int UBIFS_BLOCK_SHIFT ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_ROOT_INO ;
 int UBIFS_SUPER_MAGIC ;
 int UBI_READWRITE ;
 int d_make_root (struct inode*) ;
 int fscrypt_set_ops (struct super_block*,int *) ;
 scalar_t__ key_max_inode_size (struct ubifs_info*) ;
 int mount_ubifs (struct ubifs_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int super_setup_bdi_name (struct super_block*,char*,int ,int ) ;
 int ubi_close_volume (struct inode*) ;
 struct inode* ubi_open_volume (int ,int ,int ) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_crypt_operations ;
 struct inode* ubifs_iget (struct super_block*,int ) ;
 int ubifs_parse_options (struct ubifs_info*,void*,int ) ;
 int ubifs_super_operations ;
 int ubifs_umount (struct ubifs_info*) ;
 int ubifs_xattr_handlers ;

__attribute__((used)) static int ubifs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct ubifs_info *c = sb->s_fs_info;
 struct inode *root;
 int err;

 c->vfs_sb = sb;

 c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READWRITE);
 if (IS_ERR(c->ubi)) {
  err = PTR_ERR(c->ubi);
  goto out;
 }

 err = ubifs_parse_options(c, data, 0);
 if (err)
  goto out_close;
 err = super_setup_bdi_name(sb, "ubifs_%d_%d", c->vi.ubi_num,
       c->vi.vol_id);
 if (err)
  goto out_close;

 sb->s_fs_info = c;
 sb->s_magic = UBIFS_SUPER_MAGIC;
 sb->s_blocksize = UBIFS_BLOCK_SIZE;
 sb->s_blocksize_bits = UBIFS_BLOCK_SHIFT;
 sb->s_maxbytes = c->max_inode_sz = key_max_inode_size(c);
 if (c->max_inode_sz > MAX_LFS_FILESIZE)
  sb->s_maxbytes = c->max_inode_sz = MAX_LFS_FILESIZE;
 sb->s_op = &ubifs_super_operations;



 fscrypt_set_ops(sb, &ubifs_crypt_operations);

 mutex_lock(&c->umount_mutex);
 err = mount_ubifs(c);
 if (err) {
  ubifs_assert(c, err < 0);
  goto out_unlock;
 }


 root = ubifs_iget(sb, UBIFS_ROOT_INO);
 if (IS_ERR(root)) {
  err = PTR_ERR(root);
  goto out_umount;
 }

 sb->s_root = d_make_root(root);
 if (!sb->s_root) {
  err = -ENOMEM;
  goto out_umount;
 }

 mutex_unlock(&c->umount_mutex);
 return 0;

out_umount:
 ubifs_umount(c);
out_unlock:
 mutex_unlock(&c->umount_mutex);
out_close:
 ubi_close_volume(c->ubi);
out:
 return err;
}
