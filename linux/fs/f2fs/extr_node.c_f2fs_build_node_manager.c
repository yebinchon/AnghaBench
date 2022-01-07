
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int nm_info; } ;
struct f2fs_nm_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int f2fs_build_free_nids (struct f2fs_sb_info*,int,int) ;
 int f2fs_kzalloc (struct f2fs_sb_info*,int,int ) ;
 int init_free_nid_cache (struct f2fs_sb_info*) ;
 int init_node_manager (struct f2fs_sb_info*) ;
 int load_free_nid_bitmap (struct f2fs_sb_info*) ;

int f2fs_build_node_manager(struct f2fs_sb_info *sbi)
{
 int err;

 sbi->nm_info = f2fs_kzalloc(sbi, sizeof(struct f2fs_nm_info),
       GFP_KERNEL);
 if (!sbi->nm_info)
  return -ENOMEM;

 err = init_node_manager(sbi);
 if (err)
  return err;

 err = init_free_nid_cache(sbi);
 if (err)
  return err;


 load_free_nid_bitmap(sbi);

 return f2fs_build_free_nids(sbi, 1, 1);
}
