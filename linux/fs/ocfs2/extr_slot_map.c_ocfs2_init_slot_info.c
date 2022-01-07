
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_slot_info* slot_info; int max_slots; } ;
struct ocfs2_slot_info {struct inode* si_inode; int si_num_slots; int si_extended; } ;
struct inode {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OCFS2_INVALID_SLOT ;
 int SLOT_MAP_SYSTEM_INODE ;
 int __ocfs2_free_slot_info (struct ocfs2_slot_info*) ;
 struct ocfs2_slot_info* kzalloc (int ,int ) ;
 int mlog_errno (int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_map_slot_buffers (struct ocfs2_super*,struct ocfs2_slot_info*) ;
 int ocfs2_uses_extended_slot_map (struct ocfs2_super*) ;
 int si_slots ;
 int struct_size (struct ocfs2_slot_info*,int ,int ) ;

int ocfs2_init_slot_info(struct ocfs2_super *osb)
{
 int status;
 struct inode *inode = ((void*)0);
 struct ocfs2_slot_info *si;

 si = kzalloc(struct_size(si, si_slots, osb->max_slots), GFP_KERNEL);
 if (!si) {
  status = -ENOMEM;
  mlog_errno(status);
  return status;
 }

 si->si_extended = ocfs2_uses_extended_slot_map(osb);
 si->si_num_slots = osb->max_slots;

 inode = ocfs2_get_system_file_inode(osb, SLOT_MAP_SYSTEM_INODE,
         OCFS2_INVALID_SLOT);
 if (!inode) {
  status = -EINVAL;
  mlog_errno(status);
  goto bail;
 }

 si->si_inode = inode;
 status = ocfs2_map_slot_buffers(osb, si);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 osb->slot_info = (struct ocfs2_slot_info *)si;
bail:
 if (status < 0)
  __ocfs2_free_slot_info(si);

 return status;
}
