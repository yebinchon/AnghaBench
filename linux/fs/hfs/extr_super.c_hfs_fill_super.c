
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_root; int * s_d_op; int s_flags; int s_xattr; int * s_op; struct hfs_sb_info* s_fs_info; } ;
struct inode {int dummy; } ;
struct hfs_sb_info {int bitmap_lock; int mdb_work; int work_lock; struct super_block* sb; } ;
struct hfs_find_data {int entrylength; TYPE_1__* search_key; int entryoffset; int bnode; } ;
typedef int rec ;
typedef int hfs_cat_rec ;
struct TYPE_4__ {int cat_tree; } ;
struct TYPE_3__ {int cat; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HFS_ROOT_CNID ;
 TYPE_2__* HFS_SB (struct super_block*) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int SB_NODIRATIME ;
 int d_make_root (struct inode*) ;
 int flush_mdb ;
 int hfs_bnode_read (int ,int *,int ,int) ;
 int hfs_cat_find_brec (struct super_block*,int ,struct hfs_find_data*) ;
 int hfs_dentry_operations ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 struct inode* hfs_iget (struct super_block*,int *,int *) ;
 int hfs_mdb_get (struct super_block*) ;
 int hfs_mdb_name (struct super_block*) ;
 int hfs_mdb_put (struct super_block*) ;
 int hfs_super_operations ;
 int hfs_xattr_handlers ;
 struct hfs_sb_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int parse_options (char*,struct hfs_sb_info*) ;
 int pr_err (char*) ;
 int pr_warn (char*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hfs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct hfs_sb_info *sbi;
 struct hfs_find_data fd;
 hfs_cat_rec rec;
 struct inode *root_inode;
 int res;

 sbi = kzalloc(sizeof(struct hfs_sb_info), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;

 sbi->sb = sb;
 sb->s_fs_info = sbi;
 spin_lock_init(&sbi->work_lock);
 INIT_DELAYED_WORK(&sbi->mdb_work, flush_mdb);

 res = -EINVAL;
 if (!parse_options((char *)data, sbi)) {
  pr_err("unable to parse mount options\n");
  goto bail;
 }

 sb->s_op = &hfs_super_operations;
 sb->s_xattr = hfs_xattr_handlers;
 sb->s_flags |= SB_NODIRATIME;
 mutex_init(&sbi->bitmap_lock);

 res = hfs_mdb_get(sb);
 if (res) {
  if (!silent)
   pr_warn("can't find a HFS filesystem on dev %s\n",
    hfs_mdb_name(sb));
  res = -EINVAL;
  goto bail;
 }


 res = hfs_find_init(HFS_SB(sb)->cat_tree, &fd);
 if (res)
  goto bail_no_root;
 res = hfs_cat_find_brec(sb, HFS_ROOT_CNID, &fd);
 if (!res) {
  if (fd.entrylength > sizeof(rec) || fd.entrylength < 0) {
   res = -EIO;
   goto bail;
  }
  hfs_bnode_read(fd.bnode, &rec, fd.entryoffset, fd.entrylength);
 }
 if (res) {
  hfs_find_exit(&fd);
  goto bail_no_root;
 }
 res = -EINVAL;
 root_inode = hfs_iget(sb, &fd.search_key->cat, &rec);
 hfs_find_exit(&fd);
 if (!root_inode)
  goto bail_no_root;

 sb->s_d_op = &hfs_dentry_operations;
 res = -ENOMEM;
 sb->s_root = d_make_root(root_inode);
 if (!sb->s_root)
  goto bail_no_root;


 return 0;

bail_no_root:
 pr_err("get root inode failed\n");
bail:
 hfs_mdb_put(sb);
 return res;
}
