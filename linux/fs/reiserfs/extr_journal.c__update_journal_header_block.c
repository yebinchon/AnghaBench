
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_journal_header {void* j_mount_id; void* j_first_unflushed_offset; void* j_last_flush_trans_id; } ;
struct reiserfs_journal {unsigned int j_last_flush_trans_id; unsigned long j_first_unflushed_offset; unsigned long j_mount_id; TYPE_1__* j_header_bh; } ;
struct TYPE_7__ {scalar_t__ b_data; } ;


 int EIO ;
 int REQ_FUA ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 struct reiserfs_journal* SB_JOURNAL (struct super_block*) ;
 int __sync_dirty_buffer (TYPE_1__*,int) ;
 int __wait_on_buffer (TYPE_1__*) ;
 scalar_t__ buffer_locked (TYPE_1__*) ;
 int buffer_uptodate (TYPE_1__*) ;
 void* cpu_to_le32 (unsigned long) ;
 scalar_t__ reiserfs_barrier_flush (struct super_block*) ;
 scalar_t__ reiserfs_is_journal_aborted (struct reiserfs_journal*) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 int reiserfs_write_lock_nested (struct super_block*,int) ;
 int reiserfs_write_unlock_nested (struct super_block*) ;
 int set_buffer_dirty (TYPE_1__*) ;
 int sync_dirty_buffer (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int _update_journal_header_block(struct super_block *sb,
     unsigned long offset,
     unsigned int trans_id)
{
 struct reiserfs_journal_header *jh;
 struct reiserfs_journal *journal = SB_JOURNAL(sb);
 int depth;

 if (reiserfs_is_journal_aborted(journal))
  return -EIO;

 if (trans_id >= journal->j_last_flush_trans_id) {
  if (buffer_locked((journal->j_header_bh))) {
   depth = reiserfs_write_unlock_nested(sb);
   __wait_on_buffer(journal->j_header_bh);
   reiserfs_write_lock_nested(sb, depth);
   if (unlikely(!buffer_uptodate(journal->j_header_bh))) {




    return -EIO;
   }
  }
  journal->j_last_flush_trans_id = trans_id;
  journal->j_first_unflushed_offset = offset;
  jh = (struct reiserfs_journal_header *)(journal->j_header_bh->
       b_data);
  jh->j_last_flush_trans_id = cpu_to_le32(trans_id);
  jh->j_first_unflushed_offset = cpu_to_le32(offset);
  jh->j_mount_id = cpu_to_le32(journal->j_mount_id);

  set_buffer_dirty(journal->j_header_bh);
  depth = reiserfs_write_unlock_nested(sb);

  if (reiserfs_barrier_flush(sb))
   __sync_dirty_buffer(journal->j_header_bh,
     REQ_SYNC | REQ_PREFLUSH | REQ_FUA);
  else
   sync_dirty_buffer(journal->j_header_bh);

  reiserfs_write_lock_nested(sb, depth);
  if (!buffer_uptodate(journal->j_header_bh)) {
   reiserfs_warning(sb, "journal-837",
      "IO error during journal replay");
   return -EIO;
  }
 }
 return 0;
}
