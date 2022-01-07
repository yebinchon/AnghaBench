
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {scalar_t__ local_alloc_bits; scalar_t__ bitmap_cpg; int local_alloc_state; struct buffer_head* local_alloc_bh; int slot_num; int sb; } ;
struct ocfs2_local_alloc {scalar_t__ la_size; scalar_t__ la_bm_off; } ;
struct TYPE_4__ {scalar_t__ i_total; scalar_t__ i_used; } ;
struct TYPE_5__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; scalar_t__ i_flags; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;


 int EINVAL ;
 int LOCAL_ALLOC_SYSTEM_INODE ;
 int ML_ERROR ;
 int ML_NOTICE ;
 int OCFS2_BH_IGNORE_CACHE ;
 int OCFS2_BITMAP_FL ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_LA_ENABLED ;
 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 int OCFS2_LOCAL_ALLOC_FL ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (scalar_t__) ;
 int mlog (int ,char*,scalar_t__,...) ;
 int mlog_errno (int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_la_default_mb (struct ocfs2_super*) ;
 int ocfs2_local_alloc_count_bits (struct ocfs2_dinode*) ;
 int ocfs2_local_alloc_size (int ) ;
 scalar_t__ ocfs2_megabytes_to_clusters (int ,int ) ;
 int ocfs2_read_inode_block_full (struct inode*,struct buffer_head**,int ) ;
 int trace_ocfs2_load_local_alloc (scalar_t__) ;

int ocfs2_load_local_alloc(struct ocfs2_super *osb)
{
 int status = 0;
 struct ocfs2_dinode *alloc = ((void*)0);
 struct buffer_head *alloc_bh = ((void*)0);
 u32 num_used;
 struct inode *inode = ((void*)0);
 struct ocfs2_local_alloc *la;

 if (osb->local_alloc_bits == 0)
  goto bail;

 if (osb->local_alloc_bits >= osb->bitmap_cpg) {
  mlog(ML_NOTICE, "Requested local alloc window %d is larger "
       "than max possible %u. Using defaults.\n",
       osb->local_alloc_bits, (osb->bitmap_cpg - 1));
  osb->local_alloc_bits =
   ocfs2_megabytes_to_clusters(osb->sb,
          ocfs2_la_default_mb(osb));
 }


 inode = ocfs2_get_system_file_inode(osb, LOCAL_ALLOC_SYSTEM_INODE,
         osb->slot_num);
 if (!inode) {
  status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_read_inode_block_full(inode, &alloc_bh,
          OCFS2_BH_IGNORE_CACHE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 alloc = (struct ocfs2_dinode *) alloc_bh->b_data;
 la = OCFS2_LOCAL_ALLOC(alloc);

 if (!(le32_to_cpu(alloc->i_flags) &
     (OCFS2_LOCAL_ALLOC_FL|OCFS2_BITMAP_FL))) {
  mlog(ML_ERROR, "Invalid local alloc inode, %llu\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);
  status = -EINVAL;
  goto bail;
 }

 if ((la->la_size == 0) ||
     (le16_to_cpu(la->la_size) > ocfs2_local_alloc_size(inode->i_sb))) {
  mlog(ML_ERROR, "Local alloc size is invalid (la_size = %u)\n",
       le16_to_cpu(la->la_size));
  status = -EINVAL;
  goto bail;
 }


 num_used = ocfs2_local_alloc_count_bits(alloc);



 if (num_used
     || alloc->id1.bitmap1.i_used
     || alloc->id1.bitmap1.i_total
     || la->la_bm_off) {
  mlog(ML_ERROR, "inconsistent detected, clean journal with"
       " unrecovered local alloc, please run fsck.ocfs2!\n"
       "found = %u, set = %u, taken = %u, off = %u\n",
       num_used, le32_to_cpu(alloc->id1.bitmap1.i_used),
       le32_to_cpu(alloc->id1.bitmap1.i_total),
       OCFS2_LOCAL_ALLOC(alloc)->la_bm_off);

  status = -EINVAL;
  goto bail;
 }

 osb->local_alloc_bh = alloc_bh;
 osb->local_alloc_state = OCFS2_LA_ENABLED;

bail:
 if (status < 0)
  brelse(alloc_bh);
 iput(inode);

 trace_ocfs2_load_local_alloc(osb->local_alloc_bits);

 if (status)
  mlog_errno(status);
 return status;
}
