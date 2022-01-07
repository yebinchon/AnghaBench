
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ext4_renament {int * bh; TYPE_2__* dir; int inlined; TYPE_1__* de; } ;
typedef int handle_t ;
struct TYPE_7__ {int i_sb; int i_mtime; int i_ctime; } ;
struct TYPE_6__ {unsigned int file_type; int inode; } ;


 int BUFFER_TRACE (int *,char*) ;
 int brelse (int *) ;
 int cpu_to_le32 (unsigned int) ;
 int current_time (TYPE_2__*) ;
 int ext4_handle_dirty_dirblock (int *,TYPE_2__*,int *) ;
 scalar_t__ ext4_has_feature_filetype (int ) ;
 int ext4_journal_get_write_access (int *,int *) ;
 int ext4_mark_inode_dirty (int *,TYPE_2__*) ;
 int ext4_std_error (int ,int) ;
 int inode_inc_iversion (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ext4_setent(handle_t *handle, struct ext4_renament *ent,
         unsigned ino, unsigned file_type)
{
 int retval;

 BUFFER_TRACE(ent->bh, "get write access");
 retval = ext4_journal_get_write_access(handle, ent->bh);
 if (retval)
  return retval;
 ent->de->inode = cpu_to_le32(ino);
 if (ext4_has_feature_filetype(ent->dir->i_sb))
  ent->de->file_type = file_type;
 inode_inc_iversion(ent->dir);
 ent->dir->i_ctime = ent->dir->i_mtime =
  current_time(ent->dir);
 ext4_mark_inode_dirty(handle, ent->dir);
 BUFFER_TRACE(ent->bh, "call ext4_handle_dirty_metadata");
 if (!ent->inlined) {
  retval = ext4_handle_dirty_dirblock(handle, ent->dir, ent->bh);
  if (unlikely(retval)) {
   ext4_std_error(ent->dir->i_sb, retval);
   return retval;
  }
 }
 brelse(ent->bh);
 ent->bh = ((void*)0);

 return 0;
}
