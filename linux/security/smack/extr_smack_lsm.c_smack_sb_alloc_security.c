
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superblock_smack {int * smk_hat; int * smk_floor; int * smk_default; int * smk_root; } ;
struct super_block {struct superblock_smack* s_security; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct superblock_smack* kzalloc (int,int ) ;
 int smack_known_floor ;
 int smack_known_hat ;

__attribute__((used)) static int smack_sb_alloc_security(struct super_block *sb)
{
 struct superblock_smack *sbsp;

 sbsp = kzalloc(sizeof(struct superblock_smack), GFP_KERNEL);

 if (sbsp == ((void*)0))
  return -ENOMEM;

 sbsp->smk_root = &smack_known_floor;
 sbsp->smk_default = &smack_known_floor;
 sbsp->smk_floor = &smack_known_floor;
 sbsp->smk_hat = &smack_known_hat;



 sb->s_security = sbsp;

 return 0;
}
