
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct dentry* s_root; int * s_export_op; int s_maxbytes; int s_blocksize_bits; int s_blocksize; int * s_d_op; int * s_op; int s_magic; int s_xattr; } ;
struct inode {int i_mode; } ;
struct orangefs_object_kref {int fs_id; struct inode khandle; } ;
struct orangefs_fs_mount_response {int id; int fs_id; struct inode root_khandle; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int fs_id; struct inode root_khandle; int id; struct super_block* sb; } ;


 int ENOMEM ;
 int GOSSIP_SUPER_DEBUG ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAX_LFS_FILESIZE ;
 TYPE_1__* ORANGEFS_SB (struct super_block*) ;
 int ORANGEFS_SUPER_MAGIC ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PTR_ERR (struct inode*) ;
 struct dentry* d_make_root (struct inode*) ;
 int gossip_debug (int ,char*,struct inode*,int ) ;
 int orangefs_dentry_operations ;
 int orangefs_export_ops ;
 struct inode* orangefs_iget (struct super_block*,struct orangefs_object_kref*) ;
 int orangefs_s_ops ;
 int orangefs_xattr_handlers ;
 int parse_mount_options (struct super_block*,void*,int) ;
 int super_setup_bdi (struct super_block*) ;

__attribute__((used)) static int orangefs_fill_sb(struct super_block *sb,
  struct orangefs_fs_mount_response *fs_mount,
  void *data, int silent)
{
 int ret;
 struct inode *root;
 struct dentry *root_dentry;
 struct orangefs_object_kref root_object;

 ORANGEFS_SB(sb)->sb = sb;

 ORANGEFS_SB(sb)->root_khandle = fs_mount->root_khandle;
 ORANGEFS_SB(sb)->fs_id = fs_mount->fs_id;
 ORANGEFS_SB(sb)->id = fs_mount->id;

 if (data) {
  ret = parse_mount_options(sb, data, silent);
  if (ret)
   return ret;
 }


 sb->s_xattr = orangefs_xattr_handlers;
 sb->s_magic = ORANGEFS_SUPER_MAGIC;
 sb->s_op = &orangefs_s_ops;
 sb->s_d_op = &orangefs_dentry_operations;

 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_maxbytes = MAX_LFS_FILESIZE;

 ret = super_setup_bdi(sb);
 if (ret)
  return ret;

 root_object.khandle = ORANGEFS_SB(sb)->root_khandle;
 root_object.fs_id = ORANGEFS_SB(sb)->fs_id;
 gossip_debug(GOSSIP_SUPER_DEBUG,
       "get inode %pU, fsid %d\n",
       &root_object.khandle,
       root_object.fs_id);

 root = orangefs_iget(sb, &root_object);
 if (IS_ERR(root))
  return PTR_ERR(root);

 gossip_debug(GOSSIP_SUPER_DEBUG,
       "Allocated root inode [%p] with mode %x\n",
       root,
       root->i_mode);


 root_dentry = d_make_root(root);
 if (!root_dentry)
  return -ENOMEM;

 sb->s_export_op = &orangefs_export_ops;
 sb->s_root = root_dentry;
 return 0;
}
