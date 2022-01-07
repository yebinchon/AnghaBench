
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {scalar_t__ ns_segnum; scalar_t__ ns_nsegments; int ns_sb; void* ns_last_cno; void* ns_cno; void* ns_last_pseg; void* ns_last_seq; void* ns_seg_seq; void* ns_prev_seq; } ;
struct nilfs_super_block {int s_last_seq; int s_last_cno; int s_last_pseg; } ;


 int EINVAL ;
 int KERN_ERR ;
 void* le64_to_cpu (int ) ;
 scalar_t__ nilfs_get_segnum_of_block (struct the_nilfs*,void*) ;
 int nilfs_msg (int ,int ,char*,unsigned long long,scalar_t__) ;

__attribute__((used)) static int nilfs_store_log_cursor(struct the_nilfs *nilfs,
      struct nilfs_super_block *sbp)
{
 int ret = 0;

 nilfs->ns_last_pseg = le64_to_cpu(sbp->s_last_pseg);
 nilfs->ns_last_cno = le64_to_cpu(sbp->s_last_cno);
 nilfs->ns_last_seq = le64_to_cpu(sbp->s_last_seq);

 nilfs->ns_prev_seq = nilfs->ns_last_seq;
 nilfs->ns_seg_seq = nilfs->ns_last_seq;
 nilfs->ns_segnum =
  nilfs_get_segnum_of_block(nilfs, nilfs->ns_last_pseg);
 nilfs->ns_cno = nilfs->ns_last_cno + 1;
 if (nilfs->ns_segnum >= nilfs->ns_nsegments) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "pointed segment number is out of range: segnum=%llu, nsegments=%lu",
     (unsigned long long)nilfs->ns_segnum,
     nilfs->ns_nsegments);
  ret = -EINVAL;
 }
 return ret;
}
