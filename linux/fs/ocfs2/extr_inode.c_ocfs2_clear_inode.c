
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_super {TYPE_1__* journal; int osb_la_resmap; } ;
struct ocfs2_inode_info {unsigned long long ip_blkno; int ip_flags; int ip_jinode; scalar_t__ ip_dir_start_lookup; int ip_open_count; int ip_alloc_sem; int ip_io_mutex; int ip_lock; int ip_open_lockres; int ip_inode_lockres; int ip_rw_lockres; int ip_unwritten_list; int ip_io_markers; int ip_la_data_resv; } ;
struct inode {int i_ino; int i_nlink; int i_sb; } ;
struct TYPE_5__ {int ci_flags; int ci_num_cached; } ;
struct TYPE_4__ {int j_journal; } ;


 TYPE_2__* INODE_CACHE (struct inode*) ;
 int OCFS2_CACHE_FL_INLINE ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int clear_inode (struct inode*) ;
 int down_write_trylock (int *) ;
 int dquot_drop (struct inode*) ;
 int jbd2_journal_release_jbd_inode (int ,int *) ;
 int list_empty (int *) ;
 int mlog_bug_on_msg (int,char*,unsigned long long,...) ;
 int mlog_errno (int) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_checkpoint_inode (struct inode*) ;
 int ocfs2_drop_inode_locks (struct inode*) ;
 int ocfs2_extent_map_trunc (struct inode*,int ) ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_mark_lockres_freeing (struct ocfs2_super*,int *) ;
 int ocfs2_metadata_cache_exit (TYPE_2__*) ;
 int ocfs2_open_unlock (struct inode*) ;
 int ocfs2_resv_discard (int *,int *) ;
 int ocfs2_resv_init_once (int *) ;
 int spin_is_locked (int *) ;
 int trace_ocfs2_clear_inode (unsigned long long,int ) ;
 int up_write (int *) ;

__attribute__((used)) static void ocfs2_clear_inode(struct inode *inode)
{
 int status;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 clear_inode(inode);
 trace_ocfs2_clear_inode((unsigned long long)oi->ip_blkno,
    inode->i_nlink);

 mlog_bug_on_msg(osb == ((void*)0),
   "Inode=%lu\n", inode->i_ino);

 dquot_drop(inode);



 ocfs2_open_unlock(inode);



 ocfs2_mark_lockres_freeing(osb, &oi->ip_rw_lockres);
 ocfs2_mark_lockres_freeing(osb, &oi->ip_inode_lockres);
 ocfs2_mark_lockres_freeing(osb, &oi->ip_open_lockres);

 ocfs2_resv_discard(&osb->osb_la_resmap,
      &oi->ip_la_data_resv);
 ocfs2_resv_init_once(&oi->ip_la_data_resv);







 if (!(oi->ip_flags & OCFS2_INODE_DELETED))
  ocfs2_checkpoint_inode(inode);

 mlog_bug_on_msg(!list_empty(&oi->ip_io_markers),
   "Clear inode of %llu, inode has io markers\n",
   (unsigned long long)oi->ip_blkno);
 mlog_bug_on_msg(!list_empty(&oi->ip_unwritten_list),
   "Clear inode of %llu, inode has unwritten extents\n",
   (unsigned long long)oi->ip_blkno);

 ocfs2_extent_map_trunc(inode, 0);

 status = ocfs2_drop_inode_locks(inode);
 if (status < 0)
  mlog_errno(status);

 ocfs2_lock_res_free(&oi->ip_rw_lockres);
 ocfs2_lock_res_free(&oi->ip_inode_lockres);
 ocfs2_lock_res_free(&oi->ip_open_lockres);

 ocfs2_metadata_cache_exit(INODE_CACHE(inode));

 mlog_bug_on_msg(INODE_CACHE(inode)->ci_num_cached,
   "Clear inode of %llu, inode has %u cache items\n",
   (unsigned long long)oi->ip_blkno,
   INODE_CACHE(inode)->ci_num_cached);

 mlog_bug_on_msg(!(INODE_CACHE(inode)->ci_flags & OCFS2_CACHE_FL_INLINE),
   "Clear inode of %llu, inode has a bad flag\n",
   (unsigned long long)oi->ip_blkno);

 mlog_bug_on_msg(spin_is_locked(&oi->ip_lock),
   "Clear inode of %llu, inode is locked\n",
   (unsigned long long)oi->ip_blkno);

 mlog_bug_on_msg(!mutex_trylock(&oi->ip_io_mutex),
   "Clear inode of %llu, io_mutex is locked\n",
   (unsigned long long)oi->ip_blkno);
 mutex_unlock(&oi->ip_io_mutex);





 mlog_bug_on_msg(!down_write_trylock(&oi->ip_alloc_sem),
   "Clear inode of %llu, alloc_sem is locked\n",
   (unsigned long long)oi->ip_blkno);
 up_write(&oi->ip_alloc_sem);

 mlog_bug_on_msg(oi->ip_open_count,
   "Clear inode of %llu has open count %d\n",
   (unsigned long long)oi->ip_blkno, oi->ip_open_count);


 oi->ip_flags = 0;
 oi->ip_dir_start_lookup = 0;
 oi->ip_blkno = 0ULL;






 jbd2_journal_release_jbd_inode(osb->journal->j_journal,
           &oi->ip_jinode);
}
