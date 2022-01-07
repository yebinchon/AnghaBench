
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int slot_num; int osb_lock; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {int dummy; } ;


 int OCFS2_INVALID_SLOT ;
 int mlog_errno (int) ;
 int ocfs2_free_slot_info (struct ocfs2_super*) ;
 int ocfs2_invalidate_slot (struct ocfs2_slot_info*,int) ;
 int ocfs2_update_disk_slot (struct ocfs2_super*,struct ocfs2_slot_info*,int) ;
 int ocfs2_update_slot_info (struct ocfs2_slot_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_put_slot(struct ocfs2_super *osb)
{
 int status, slot_num;
 struct ocfs2_slot_info *si = osb->slot_info;

 if (!si)
  return;

 spin_lock(&osb->osb_lock);
 ocfs2_update_slot_info(si);

 slot_num = osb->slot_num;
 ocfs2_invalidate_slot(si, osb->slot_num);
 osb->slot_num = OCFS2_INVALID_SLOT;
 spin_unlock(&osb->osb_lock);

 status = ocfs2_update_disk_slot(osb, si, slot_num);
 if (status < 0)
  mlog_errno(status);

 ocfs2_free_slot_info(osb);
}
