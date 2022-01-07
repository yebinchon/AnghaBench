
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {scalar_t__ osb_dir_resv_level; scalar_t__ osb_resv_level; } ;



int ocfs2_dir_resv_allowed(struct ocfs2_super *osb)
{
 return (osb->osb_resv_level && osb->osb_dir_resv_level);
}
