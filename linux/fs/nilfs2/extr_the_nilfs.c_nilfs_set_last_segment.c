
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct the_nilfs {scalar_t__ ns_last_seq; scalar_t__ ns_prev_seq; int ns_last_segment_lock; int ns_last_cno; int ns_last_pseg; } ;
typedef int sector_t ;
typedef int __u64 ;


 int nilfs_sb_dirty (struct the_nilfs*) ;
 int set_nilfs_sb_dirty (struct the_nilfs*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nilfs_set_last_segment(struct the_nilfs *nilfs,
       sector_t start_blocknr, u64 seq, __u64 cno)
{
 spin_lock(&nilfs->ns_last_segment_lock);
 nilfs->ns_last_pseg = start_blocknr;
 nilfs->ns_last_seq = seq;
 nilfs->ns_last_cno = cno;

 if (!nilfs_sb_dirty(nilfs)) {
  if (nilfs->ns_prev_seq == nilfs->ns_last_seq)
   goto stay_cursor;

  set_nilfs_sb_dirty(nilfs);
 }
 nilfs->ns_prev_seq = nilfs->ns_last_seq;

 stay_cursor:
 spin_unlock(&nilfs->ns_last_segment_lock);
}
