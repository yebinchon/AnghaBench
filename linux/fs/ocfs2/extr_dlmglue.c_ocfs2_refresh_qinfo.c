
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_qinfo_lvb {scalar_t__ lvb_version; int lvb_free_entry; int lvb_free_blk; int lvb_blocks; int lvb_syncms; int lvb_igrace; int lvb_bgrace; } ;
struct TYPE_2__ {void* dqi_free_entry; void* dqi_free_blk; void* dqi_blocks; int dqi_type; int dqi_sb; } ;
struct ocfs2_lock_res {int l_lksb; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; void* dqi_syncms; int dqi_giblk; int dqi_gqinode; struct ocfs2_lock_res dqi_gqlock; } ;
struct ocfs2_global_disk_dqinfo {int dqi_free_entry; int dqi_free_blk; int dqi_blocks; int dqi_syncms; int dqi_igrace; int dqi_bgrace; } ;
struct mem_dqinfo {void* dqi_igrace; void* dqi_bgrace; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ OCFS2_GLOBAL_INFO_OFF ;
 scalar_t__ OCFS2_QINFO_LVB_VERSION ;
 void* be32_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 void* le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 struct ocfs2_qinfo_lvb* ocfs2_dlm_lvb (int *) ;
 scalar_t__ ocfs2_dlm_lvb_valid (int *) ;
 int ocfs2_read_quota_phys_block (int ,int ,struct buffer_head**) ;
 int ocfs2_track_lock_refresh (struct ocfs2_lock_res*) ;
 struct mem_dqinfo* sb_dqinfo (int ,int ) ;

__attribute__((used)) static int ocfs2_refresh_qinfo(struct ocfs2_mem_dqinfo *oinfo)
{
 struct mem_dqinfo *info = sb_dqinfo(oinfo->dqi_gi.dqi_sb,
         oinfo->dqi_gi.dqi_type);
 struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
 struct ocfs2_qinfo_lvb *lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_global_disk_dqinfo *gdinfo;
 int status = 0;

 if (ocfs2_dlm_lvb_valid(&lockres->l_lksb) &&
     lvb->lvb_version == OCFS2_QINFO_LVB_VERSION) {
  info->dqi_bgrace = be32_to_cpu(lvb->lvb_bgrace);
  info->dqi_igrace = be32_to_cpu(lvb->lvb_igrace);
  oinfo->dqi_syncms = be32_to_cpu(lvb->lvb_syncms);
  oinfo->dqi_gi.dqi_blocks = be32_to_cpu(lvb->lvb_blocks);
  oinfo->dqi_gi.dqi_free_blk = be32_to_cpu(lvb->lvb_free_blk);
  oinfo->dqi_gi.dqi_free_entry =
     be32_to_cpu(lvb->lvb_free_entry);
 } else {
  status = ocfs2_read_quota_phys_block(oinfo->dqi_gqinode,
           oinfo->dqi_giblk, &bh);
  if (status) {
   mlog_errno(status);
   goto bail;
  }
  gdinfo = (struct ocfs2_global_disk_dqinfo *)
     (bh->b_data + OCFS2_GLOBAL_INFO_OFF);
  info->dqi_bgrace = le32_to_cpu(gdinfo->dqi_bgrace);
  info->dqi_igrace = le32_to_cpu(gdinfo->dqi_igrace);
  oinfo->dqi_syncms = le32_to_cpu(gdinfo->dqi_syncms);
  oinfo->dqi_gi.dqi_blocks = le32_to_cpu(gdinfo->dqi_blocks);
  oinfo->dqi_gi.dqi_free_blk = le32_to_cpu(gdinfo->dqi_free_blk);
  oinfo->dqi_gi.dqi_free_entry =
     le32_to_cpu(gdinfo->dqi_free_entry);
  brelse(bh);
  ocfs2_track_lock_refresh(lockres);
 }

bail:
 return status;
}
