
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_recovering_orphan_dirs; int node_map_lock; } ;


 int ocfs2_node_map_init (int *) ;
 int spin_lock_init (int *) ;

void ocfs2_init_node_maps(struct ocfs2_super *osb)
{
 spin_lock_init(&osb->node_map_lock);
 ocfs2_node_map_init(&osb->osb_recovering_orphan_dirs);
}
