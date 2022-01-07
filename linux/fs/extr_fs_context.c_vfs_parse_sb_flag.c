
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {unsigned int sb_flags; unsigned int sb_flags_mask; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOPARAM ;
 int common_clear_sb_flag ;
 int common_set_sb_flag ;
 int * forbidden_sb_flag ;
 unsigned int lookup_constant (int ,char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int vfs_parse_sb_flag(struct fs_context *fc, const char *key)
{
 unsigned int token;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(forbidden_sb_flag); i++)
  if (strcmp(key, forbidden_sb_flag[i]) == 0)
   return -EINVAL;

 token = lookup_constant(common_set_sb_flag, key, 0);
 if (token) {
  fc->sb_flags |= token;
  fc->sb_flags_mask |= token;
  return 0;
 }

 token = lookup_constant(common_clear_sb_flag, key, 0);
 if (token) {
  fc->sb_flags &= ~token;
  fc->sb_flags_mask |= token;
  return 0;
 }

 return -ENOPARAM;
}
