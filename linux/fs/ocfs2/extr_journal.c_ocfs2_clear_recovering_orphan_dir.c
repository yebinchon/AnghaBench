
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_recovering_orphan_dirs; } ;


 int ocfs2_node_map_clear_bit (struct ocfs2_super*,int *,int) ;

__attribute__((used)) static void ocfs2_clear_recovering_orphan_dir(struct ocfs2_super *osb,
           int slot)
{
 ocfs2_node_map_clear_bit(osb, &osb->osb_recovering_orphan_dirs, slot);
}
