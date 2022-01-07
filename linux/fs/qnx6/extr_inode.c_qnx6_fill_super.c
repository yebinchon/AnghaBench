
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_blocksize_bits; int s_blocksize; struct qnx6_sb_info* s_fs_info; int * s_root; int s_time_max; scalar_t__ s_time_min; int s_flags; scalar_t__ s_magic; int * s_op; } ;
struct TYPE_2__ {scalar_t__ levels; } ;
struct qnx6_super_block {TYPE_1__ Longfile; TYPE_1__ Inode; int sb_serial; int sb_checksum; int sb_magic; int sb_num_blocks; int sb_blocksize; } ;
struct qnx6_sb_info {int s_blks_off; void* inodes; void* longfile; int s_ptrbits; struct qnx6_super_block* sb; struct buffer_head* sb_buf; int s_bytesex; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BYTESEX_LE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MMI_FS ;
 int PTR_ERR (struct inode*) ;
 int QNX6_BOOTBLOCK_SIZE ;
 scalar_t__ QNX6_PTR_MAX_LEVELS ;
 int QNX6_ROOT_INO ;
 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 int QNX6_SUPERBLOCK_AREA ;
 int QNX6_SUPERBLOCK_SIZE ;
 scalar_t__ QNX6_SUPER_MAGIC ;
 int SB_RDONLY ;
 int U32_MAX ;
 int brelse (struct buffer_head*) ;
 scalar_t__ crc32_be (int ,char*,int) ;
 int * d_make_root (struct inode*) ;
 int dput (int *) ;
 scalar_t__ fs32_to_cpu (struct qnx6_sb_info*,int ) ;
 scalar_t__ fs64_to_cpu (struct qnx6_sb_info*,int ) ;
 int ilog2 (int) ;
 int iput (void*) ;
 int kfree (struct qnx6_sb_info*) ;
 struct qnx6_sb_info* kzalloc (int,int ) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 struct buffer_head* qnx6_check_first_superblock (struct super_block*,int,int) ;
 char* qnx6_checkroot (struct super_block*) ;
 struct inode* qnx6_iget (struct super_block*,int ) ;
 struct qnx6_super_block* qnx6_mmi_fill_super (struct super_block*,int) ;
 int qnx6_parse_options (char*,struct super_block*) ;
 void* qnx6_private_inode (struct super_block*,TYPE_1__*) ;
 int qnx6_sops ;
 int qnx6_superblock_debug (struct qnx6_super_block*,struct super_block*) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 int sb_set_blocksize (struct super_block*,scalar_t__) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static int qnx6_fill_super(struct super_block *s, void *data, int silent)
{
 struct buffer_head *bh1 = ((void*)0), *bh2 = ((void*)0);
 struct qnx6_super_block *sb1 = ((void*)0), *sb2 = ((void*)0);
 struct qnx6_sb_info *sbi;
 struct inode *root;
 const char *errmsg;
 struct qnx6_sb_info *qs;
 int ret = -EINVAL;
 u64 offset;
 int bootblock_offset = QNX6_BOOTBLOCK_SIZE;

 qs = kzalloc(sizeof(struct qnx6_sb_info), GFP_KERNEL);
 if (!qs)
  return -ENOMEM;
 s->s_fs_info = qs;


 if (!sb_set_blocksize(s, QNX6_SUPERBLOCK_SIZE)) {
  pr_err("unable to set blocksize\n");
  goto outnobh;
 }


 if (!qnx6_parse_options((char *) data, s)) {
  pr_err("invalid mount options.\n");
  goto outnobh;
 }
 if (test_opt(s, MMI_FS)) {
  sb1 = qnx6_mmi_fill_super(s, silent);
  if (sb1)
   goto mmi_success;
  else
   goto outnobh;
 }
 sbi = QNX6_SB(s);
 sbi->s_bytesex = BYTESEX_LE;


 bh1 = qnx6_check_first_superblock(s,
  bootblock_offset / QNX6_SUPERBLOCK_SIZE, silent);
 if (!bh1) {

  bh1 = qnx6_check_first_superblock(s, 0, silent);
  if (!bh1) {
   pr_err("unable to read the first superblock\n");
   goto outnobh;
  }

  bootblock_offset = 0;
 }
 sb1 = (struct qnx6_super_block *)bh1->b_data;






 if (fs32_to_cpu(sbi, sb1->sb_checksum) !=
   crc32_be(0, (char *)(bh1->b_data + 8), 504)) {
  pr_err("superblock #1 checksum error\n");
  goto out;
 }


 if (!sb_set_blocksize(s, fs32_to_cpu(sbi, sb1->sb_blocksize))) {
  pr_err("unable to set blocksize\n");
  goto out;
 }

 brelse(bh1);
 bh1 = sb_bread(s, bootblock_offset >> s->s_blocksize_bits);
 if (!bh1)
  goto outnobh;
 sb1 = (struct qnx6_super_block *)bh1->b_data;


 offset = fs32_to_cpu(sbi, sb1->sb_num_blocks) +
  (bootblock_offset >> s->s_blocksize_bits) +
  (QNX6_SUPERBLOCK_AREA >> s->s_blocksize_bits);


 sbi->s_blks_off = (bootblock_offset >> s->s_blocksize_bits) +
     (QNX6_SUPERBLOCK_AREA >> s->s_blocksize_bits);


 bh2 = sb_bread(s, offset);
 if (!bh2) {
  pr_err("unable to read the second superblock\n");
  goto out;
 }
 sb2 = (struct qnx6_super_block *)bh2->b_data;
 if (fs32_to_cpu(sbi, sb2->sb_magic) != QNX6_SUPER_MAGIC) {
  if (!silent)
   pr_err("wrong signature (magic) in superblock #2.\n");
  goto out;
 }


 if (fs32_to_cpu(sbi, sb2->sb_checksum) !=
    crc32_be(0, (char *)(bh2->b_data + 8), 504)) {
  pr_err("superblock #2 checksum error\n");
  goto out;
 }

 if (fs64_to_cpu(sbi, sb1->sb_serial) >=
     fs64_to_cpu(sbi, sb2->sb_serial)) {

  sbi->sb_buf = bh1;
  sbi->sb = (struct qnx6_super_block *)bh1->b_data;
  brelse(bh2);
  pr_info("superblock #1 active\n");
 } else {

  sbi->sb_buf = bh2;
  sbi->sb = (struct qnx6_super_block *)bh2->b_data;
  brelse(bh1);
  pr_info("superblock #2 active\n");
 }
mmi_success:

 if (sb1->Inode.levels > QNX6_PTR_MAX_LEVELS) {
  pr_err("too many inode levels (max %i, sb %i)\n",
         QNX6_PTR_MAX_LEVELS, sb1->Inode.levels);
  goto out;
 }
 if (sb1->Longfile.levels > QNX6_PTR_MAX_LEVELS) {
  pr_err("too many longfilename levels (max %i, sb %i)\n",
         QNX6_PTR_MAX_LEVELS, sb1->Longfile.levels);
  goto out;
 }
 s->s_op = &qnx6_sops;
 s->s_magic = QNX6_SUPER_MAGIC;
 s->s_flags |= SB_RDONLY;
 s->s_time_min = 0;
 s->s_time_max = U32_MAX;


 sbi = QNX6_SB(s);
 sbi->s_ptrbits = ilog2(s->s_blocksize / 4);
 sbi->inodes = qnx6_private_inode(s, &sb1->Inode);
 if (!sbi->inodes)
  goto out;
 sbi->longfile = qnx6_private_inode(s, &sb1->Longfile);
 if (!sbi->longfile)
  goto out1;


 root = qnx6_iget(s, QNX6_ROOT_INO);
 if (IS_ERR(root)) {
  pr_err("get inode failed\n");
  ret = PTR_ERR(root);
  goto out2;
 }

 ret = -ENOMEM;
 s->s_root = d_make_root(root);
 if (!s->s_root)
  goto out2;

 ret = -EINVAL;
 errmsg = qnx6_checkroot(s);
 if (errmsg != ((void*)0)) {
  if (!silent)
   pr_err("%s\n", errmsg);
  goto out3;
 }
 return 0;

out3:
 dput(s->s_root);
 s->s_root = ((void*)0);
out2:
 iput(sbi->longfile);
out1:
 iput(sbi->inodes);
out:
 if (bh1)
  brelse(bh1);
 if (bh2)
  brelse(bh2);
outnobh:
 kfree(qs);
 s->s_fs_info = ((void*)0);
 return ret;
}
