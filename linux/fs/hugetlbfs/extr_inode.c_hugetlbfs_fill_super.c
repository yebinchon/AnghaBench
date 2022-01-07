
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; struct hugetlbfs_sb_info* s_fs_info; } ;
struct hugetlbfs_sb_info {struct hugetlbfs_sb_info* spool; int mode; int gid; int uid; int free_inodes; int max_inodes; int hstate; int stat_lock; } ;
struct hugetlbfs_fs_context {int max_hpages; int min_hpages; int hstate; int mode; int gid; int uid; int nr_inodes; } ;
struct fs_context {struct hugetlbfs_fs_context* fs_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HUGETLBFS_MAGIC ;
 int MAX_LFS_FILESIZE ;
 int d_make_root (int ) ;
 int huge_page_shift (int ) ;
 int huge_page_size (int ) ;
 struct hugetlbfs_sb_info* hugepage_new_subpool (int ,int,int) ;
 int hugetlbfs_get_root (struct super_block*,struct hugetlbfs_fs_context*) ;
 int hugetlbfs_ops ;
 int kfree (struct hugetlbfs_sb_info*) ;
 struct hugetlbfs_sb_info* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
hugetlbfs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct hugetlbfs_fs_context *ctx = fc->fs_private;
 struct hugetlbfs_sb_info *sbinfo;

 sbinfo = kmalloc(sizeof(struct hugetlbfs_sb_info), GFP_KERNEL);
 if (!sbinfo)
  return -ENOMEM;
 sb->s_fs_info = sbinfo;
 spin_lock_init(&sbinfo->stat_lock);
 sbinfo->hstate = ctx->hstate;
 sbinfo->max_inodes = ctx->nr_inodes;
 sbinfo->free_inodes = ctx->nr_inodes;
 sbinfo->spool = ((void*)0);
 sbinfo->uid = ctx->uid;
 sbinfo->gid = ctx->gid;
 sbinfo->mode = ctx->mode;






 if (ctx->max_hpages != -1 || ctx->min_hpages != -1) {
  sbinfo->spool = hugepage_new_subpool(ctx->hstate,
           ctx->max_hpages,
           ctx->min_hpages);
  if (!sbinfo->spool)
   goto out_free;
 }
 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = huge_page_size(ctx->hstate);
 sb->s_blocksize_bits = huge_page_shift(ctx->hstate);
 sb->s_magic = HUGETLBFS_MAGIC;
 sb->s_op = &hugetlbfs_ops;
 sb->s_time_gran = 1;
 sb->s_root = d_make_root(hugetlbfs_get_root(sb, ctx));
 if (!sb->s_root)
  goto out_free;
 return 0;
out_free:
 kfree(sbinfo->spool);
 kfree(sbinfo);
 return -ENOMEM;
}
