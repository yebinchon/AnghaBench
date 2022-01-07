
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ R5_HASH ;
 int SB_DISK_SUPER_BLOCK (struct super_block*) ;
 scalar_t__ TEA_HASH ;
 scalar_t__ UNSET_HASH ;
 scalar_t__ YURA_HASH ;
 scalar_t__ find_hash_out (struct super_block*) ;
 scalar_t__ reiserfs_hash_detect (struct super_block*) ;
 int reiserfs_hashname (scalar_t__) ;
 scalar_t__ reiserfs_r5_hash (struct super_block*) ;
 scalar_t__ reiserfs_rupasov_hash (struct super_block*) ;
 scalar_t__ reiserfs_tea_hash (struct super_block*) ;
 int reiserfs_warning (struct super_block*,char*,char*,int ) ;
 scalar_t__ sb_hash_function_code (int ) ;
 int sb_rdonly (struct super_block*) ;
 int set_sb_hash_function_code (int ,scalar_t__) ;

__attribute__((used)) static int what_hash(struct super_block *s)
{
 __u32 code;

 code = sb_hash_function_code(SB_DISK_SUPER_BLOCK(s));






 if (code == UNSET_HASH || reiserfs_hash_detect(s))
  code = find_hash_out(s);

 if (code != UNSET_HASH && reiserfs_hash_detect(s)) {




  if (reiserfs_rupasov_hash(s) && code != YURA_HASH) {
   reiserfs_warning(s, "reiserfs-2507",
      "Error, %s hash detected, "
      "unable to force rupasov hash",
      reiserfs_hashname(code));
   code = UNSET_HASH;
  } else if (reiserfs_tea_hash(s) && code != TEA_HASH) {
   reiserfs_warning(s, "reiserfs-2508",
      "Error, %s hash detected, "
      "unable to force tea hash",
      reiserfs_hashname(code));
   code = UNSET_HASH;
  } else if (reiserfs_r5_hash(s) && code != R5_HASH) {
   reiserfs_warning(s, "reiserfs-2509",
      "Error, %s hash detected, "
      "unable to force r5 hash",
      reiserfs_hashname(code));
   code = UNSET_HASH;
  }
 } else {




  if (reiserfs_rupasov_hash(s)) {
   code = YURA_HASH;
  } else if (reiserfs_tea_hash(s)) {
   code = TEA_HASH;
  } else if (reiserfs_r5_hash(s)) {
   code = R5_HASH;
  }
 }





 if (code != UNSET_HASH &&
     !sb_rdonly(s) &&
     code != sb_hash_function_code(SB_DISK_SUPER_BLOCK(s))) {
  set_sb_hash_function_code(SB_DISK_SUPER_BLOCK(s), code);
 }
 return code;
}
