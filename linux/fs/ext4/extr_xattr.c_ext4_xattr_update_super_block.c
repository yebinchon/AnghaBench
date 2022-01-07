
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_sbh; } ;


 int BUFFER_TRACE (int ,char*) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int ext4_handle_dirty_super (int *,struct super_block*) ;
 scalar_t__ ext4_has_feature_xattr (struct super_block*) ;
 scalar_t__ ext4_journal_get_write_access (int *,int ) ;
 int ext4_set_feature_xattr (struct super_block*) ;

__attribute__((used)) static void ext4_xattr_update_super_block(handle_t *handle,
       struct super_block *sb)
{
 if (ext4_has_feature_xattr(sb))
  return;

 BUFFER_TRACE(EXT4_SB(sb)->s_sbh, "get_write_access");
 if (ext4_journal_get_write_access(handle, EXT4_SB(sb)->s_sbh) == 0) {
  ext4_set_feature_xattr(sb);
  ext4_handle_dirty_super(handle, sb);
 }
}
