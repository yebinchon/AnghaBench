
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_qinfo_lvb {void* lvb_free_entry; void* lvb_free_blk; void* lvb_blocks; void* lvb_syncms; void* lvb_igrace; void* lvb_bgrace; int lvb_version; } ;
struct TYPE_2__ {int dqi_free_entry; int dqi_free_blk; int dqi_blocks; int dqi_type; int dqi_sb; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; int dqi_syncms; } ;
struct ocfs2_lock_res {int l_lksb; } ;
struct mem_dqinfo {int dqi_igrace; int dqi_bgrace; } ;


 int OCFS2_QINFO_LVB_VERSION ;
 void* cpu_to_be32 (int ) ;
 struct ocfs2_qinfo_lvb* ocfs2_dlm_lvb (int *) ;
 struct ocfs2_mem_dqinfo* ocfs2_lock_res_qinfo (struct ocfs2_lock_res*) ;
 struct mem_dqinfo* sb_dqinfo (int ,int ) ;

__attribute__((used)) static void ocfs2_set_qinfo_lvb(struct ocfs2_lock_res *lockres)
{
 struct ocfs2_qinfo_lvb *lvb;
 struct ocfs2_mem_dqinfo *oinfo = ocfs2_lock_res_qinfo(lockres);
 struct mem_dqinfo *info = sb_dqinfo(oinfo->dqi_gi.dqi_sb,
         oinfo->dqi_gi.dqi_type);

 lvb = ocfs2_dlm_lvb(&lockres->l_lksb);
 lvb->lvb_version = OCFS2_QINFO_LVB_VERSION;
 lvb->lvb_bgrace = cpu_to_be32(info->dqi_bgrace);
 lvb->lvb_igrace = cpu_to_be32(info->dqi_igrace);
 lvb->lvb_syncms = cpu_to_be32(oinfo->dqi_syncms);
 lvb->lvb_blocks = cpu_to_be32(oinfo->dqi_gi.dqi_blocks);
 lvb->lvb_free_blk = cpu_to_be32(oinfo->dqi_gi.dqi_free_blk);
 lvb->lvb_free_entry = cpu_to_be32(oinfo->dqi_gi.dqi_free_entry);
}
