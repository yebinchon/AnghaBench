
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EIO ;
 struct super_block* ERR_PTR (int ) ;
 int IS_ERR_OR_NULL (struct super_block*) ;
 struct super_block* pinned_root ;
 int pr_info (char*) ;

__attribute__((used)) static void loadpin_sb_free_security(struct super_block *mnt_sb)
{





 if (!IS_ERR_OR_NULL(pinned_root) && mnt_sb == pinned_root) {
  pinned_root = ERR_PTR(-EIO);
  pr_info("umount pinned fs: refusing further loads\n");
 }
}
