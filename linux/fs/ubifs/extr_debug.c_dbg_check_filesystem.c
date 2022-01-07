
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct fsck_data {int inodes; } ;


 int RB_ROOT ;
 int check_inodes (struct ubifs_info*,struct fsck_data*) ;
 int check_leaf ;
 int dbg_is_chk_fs (struct ubifs_info*) ;
 int dbg_walk_index (struct ubifs_info*,int ,int *,struct fsck_data*) ;
 int dump_stack () ;
 int free_inodes (struct fsck_data*) ;
 int ubifs_err (struct ubifs_info*,char*,int) ;

int dbg_check_filesystem(struct ubifs_info *c)
{
 int err;
 struct fsck_data fsckd;

 if (!dbg_is_chk_fs(c))
  return 0;

 fsckd.inodes = RB_ROOT;
 err = dbg_walk_index(c, check_leaf, ((void*)0), &fsckd);
 if (err)
  goto out_free;

 err = check_inodes(c, &fsckd);
 if (err)
  goto out_free;

 free_inodes(&fsckd);
 return 0;

out_free:
 ubifs_err(c, "file-system check failed with error %d", err);
 dump_stack();
 free_inodes(&fsckd);
 return err;
}
