
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct hpfs_sb_info {unsigned int sb_n_free_dnodes; } ;
typedef int secno ;


 int hpfs_error (struct super_block*,char*,int ) ;
 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void hpfs_claim_dirband_alloc(struct super_block *s, secno sec)
{
 struct hpfs_sb_info *sbi = hpfs_sb(s);
 if (sbi->sb_n_free_dnodes != (unsigned)-1) {
  if (unlikely(!sbi->sb_n_free_dnodes)) {
   hpfs_error(s, "dirband free count underflow, allocating sector %08x", sec);
   sbi->sb_n_free_dnodes = -1;
   return;
  }
  sbi->sb_n_free_dnodes--;
 }
}
