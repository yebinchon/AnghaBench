
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_debug_root; struct ocfs2_dlm_debug* osb_dlm_debug; } ;
struct ocfs2_dlm_debug {int d_filter_secs; } ;


 int S_IFREG ;
 int S_IRUSR ;
 int debugfs_create_file (char*,int,int ,struct ocfs2_super*,int *) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 int ocfs2_dlm_debug_fops ;

__attribute__((used)) static void ocfs2_dlm_init_debug(struct ocfs2_super *osb)
{
 struct ocfs2_dlm_debug *dlm_debug = osb->osb_dlm_debug;

 debugfs_create_file("locking_state", S_IFREG|S_IRUSR,
       osb->osb_debug_root, osb, &ocfs2_dlm_debug_fops);

 debugfs_create_u32("locking_filter", 0600, osb->osb_debug_root,
      &dlm_debug->d_filter_secs);
}
