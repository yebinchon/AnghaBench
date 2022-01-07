
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int node_num; int spinlock; int live_nodes_map; } ;


 int DLM_DOMAIN_BACKOFF_MS ;
 int ML_ERROR ;
 int O2NM_MAX_NODES ;
 int dlm_send_one_join_assert (struct dlm_ctxt*,int) ;
 int find_next_bit (unsigned long*,int,int) ;
 int mlog (int ,char*,int,int) ;
 int msleep (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void dlm_send_join_asserts(struct dlm_ctxt *dlm,
      unsigned long *node_map)
{
 int status, node, live;

 status = 0;
 node = -1;
 while ((node = find_next_bit(node_map, O2NM_MAX_NODES,
         node + 1)) < O2NM_MAX_NODES) {
  if (node == dlm->node_num)
   continue;

  do {



   status = dlm_send_one_join_assert(dlm, node);

   spin_lock(&dlm->spinlock);
   live = test_bit(node, dlm->live_nodes_map);
   spin_unlock(&dlm->spinlock);

   if (status) {
    mlog(ML_ERROR, "Error return %d asserting "
         "join on node %d\n", status, node);


    if (live)
     msleep(DLM_DOMAIN_BACKOFF_MS);
   }
  } while (status && live);
 }
}
