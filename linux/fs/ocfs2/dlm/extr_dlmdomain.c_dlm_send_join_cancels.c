
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int node_num; } ;


 int BITS_TO_LONGS (int) ;
 int EINVAL ;
 int ML_ERROR ;
 int O2NM_MAX_NODES ;
 int dlm_send_one_join_cancel (struct dlm_ctxt*,int) ;
 int find_next_bit (unsigned long*,int,int) ;
 int mlog (int ,char*,int,int) ;
 int mlog_errno (int) ;

__attribute__((used)) static int dlm_send_join_cancels(struct dlm_ctxt *dlm,
     unsigned long *node_map,
     unsigned int map_size)
{
 int status, tmpstat;
 int node;

 if (map_size != (BITS_TO_LONGS(O2NM_MAX_NODES) *
    sizeof(unsigned long))) {
  mlog(ML_ERROR,
       "map_size %u != BITS_TO_LONGS(O2NM_MAX_NODES) %u\n",
       map_size, (unsigned)BITS_TO_LONGS(O2NM_MAX_NODES));
  return -EINVAL;
 }

 status = 0;
 node = -1;
 while ((node = find_next_bit(node_map, O2NM_MAX_NODES,
         node + 1)) < O2NM_MAX_NODES) {
  if (node == dlm->node_num)
   continue;

  tmpstat = dlm_send_one_join_cancel(dlm, node);
  if (tmpstat) {
   mlog(ML_ERROR, "Error return %d cancelling join on "
        "node %d\n", tmpstat, node);
   if (!status)
    status = tmpstat;
  }
 }

 if (status)
  mlog_errno(status);
 return status;
}
