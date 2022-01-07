
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_triggers {int ot_triggers; } ;
struct ocfs2_super {int journal; int sb; } ;
struct ocfs2_caching_info {int ci_ops; } ;
struct buffer_head {int b_state; scalar_t__ b_blocknr; int b_size; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ML_ERROR ;



 struct ocfs2_super* OCFS2_SB (int ) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ buffer_write_io_error (struct buffer_head*) ;
 int jbd2_journal_get_undo_access (int *,struct buffer_head*) ;
 int jbd2_journal_get_write_access (int *,struct buffer_head*) ;
 int jbd2_journal_set_triggers (struct buffer_head*,int *) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog (int ,char*,...) ;
 int ocfs2_error (int ,char*) ;
 scalar_t__ ocfs2_meta_ecc (struct ocfs2_super*) ;
 int ocfs2_metadata_cache_get_super (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_lock (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_unlock (struct ocfs2_caching_info*) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int ocfs2_set_ci_lock_trans (int ,struct ocfs2_caching_info*) ;
 int trace_ocfs2_journal_access (unsigned long long,unsigned long long,int,int ) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int __ocfs2_journal_access(handle_t *handle,
      struct ocfs2_caching_info *ci,
      struct buffer_head *bh,
      struct ocfs2_triggers *triggers,
      int type)
{
 int status;
 struct ocfs2_super *osb =
  OCFS2_SB(ocfs2_metadata_cache_get_super(ci));

 BUG_ON(!ci || !ci->ci_ops);
 BUG_ON(!handle);
 BUG_ON(!bh);

 trace_ocfs2_journal_access(
  (unsigned long long)ocfs2_metadata_cache_owner(ci),
  (unsigned long long)bh->b_blocknr, type, bh->b_size);


 if (!buffer_uptodate(bh)) {
  mlog(ML_ERROR, "giving me a buffer that's not uptodate!\n");
  mlog(ML_ERROR, "b_blocknr=%llu, b_state=0x%lx\n",
       (unsigned long long)bh->b_blocknr, bh->b_state);

  lock_buffer(bh);
  if (buffer_write_io_error(bh) && !buffer_uptodate(bh)) {
   unlock_buffer(bh);
   return ocfs2_error(osb->sb, "A previous attempt to "
     "write this buffer head failed\n");
  }
  unlock_buffer(bh);
 }







 ocfs2_set_ci_lock_trans(osb->journal, ci);

 ocfs2_metadata_cache_io_lock(ci);
 switch (type) {
 case 130:
 case 128:
  status = jbd2_journal_get_write_access(handle, bh);
  break;

 case 129:
  status = jbd2_journal_get_undo_access(handle, bh);
  break;

 default:
  status = -EINVAL;
  mlog(ML_ERROR, "Unknown access type!\n");
 }
 if (!status && ocfs2_meta_ecc(osb) && triggers)
  jbd2_journal_set_triggers(bh, &triggers->ot_triggers);
 ocfs2_metadata_cache_io_unlock(ci);

 if (status < 0)
  mlog(ML_ERROR, "Error %d getting %d access to buffer!\n",
       status, type);

 return status;
}
