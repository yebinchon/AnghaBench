
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_sbh; int s_lock; } ;


 int EXT2_FEATURE_COMPAT_EXT_ATTR ;
 scalar_t__ EXT2_HAS_COMPAT_FEATURE (struct super_block*,int ) ;
 TYPE_1__* EXT2_SB (struct super_block*) ;
 int EXT2_SET_COMPAT_FEATURE (struct super_block*,int ) ;
 int ext2_update_dynamic_rev (struct super_block*) ;
 int mark_buffer_dirty (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ext2_xattr_update_super_block(struct super_block *sb)
{
 if (EXT2_HAS_COMPAT_FEATURE(sb, EXT2_FEATURE_COMPAT_EXT_ATTR))
  return;

 spin_lock(&EXT2_SB(sb)->s_lock);
 ext2_update_dynamic_rev(sb);
 EXT2_SET_COMPAT_FEATURE(sb, EXT2_FEATURE_COMPAT_EXT_ATTR);
 spin_unlock(&EXT2_SB(sb)->s_lock);
 mark_buffer_dirty(EXT2_SB(sb)->s_sbh);
}
