
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int node_num; int spinlock; int domain_map; } ;


 int DLM_DOMAIN_BACKOFF_MS ;
 int DLM_EXIT_DOMAIN_MSG ;
 int ENOPROTOOPT ;
 int ENOTCONN ;
 int ML_NOTICE ;
 int O2NM_MAX_NODES ;
 int clear_bit (int,int ) ;
 int dlm_send_one_domain_exit (struct dlm_ctxt*,int ,int) ;
 int find_next_bit (int ,int,int ) ;
 int mlog (int ,char*,int,int) ;
 int msleep (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dlm_leave_domain(struct dlm_ctxt *dlm)
{
 int node, clear_node, status;






 spin_lock(&dlm->spinlock);

 clear_bit(dlm->node_num, dlm->domain_map);
 while ((node = find_next_bit(dlm->domain_map, O2NM_MAX_NODES,
         0)) < O2NM_MAX_NODES) {






  spin_unlock(&dlm->spinlock);

  clear_node = 1;

  status = dlm_send_one_domain_exit(dlm, DLM_EXIT_DOMAIN_MSG,
        node);
  if (status < 0 &&
      status != -ENOPROTOOPT &&
      status != -ENOTCONN) {
   mlog(ML_NOTICE, "Error %d sending domain exit message "
        "to node %d\n", status, node);




   msleep(DLM_DOMAIN_BACKOFF_MS);
   clear_node = 0;
  }

  spin_lock(&dlm->spinlock);


  if (clear_node)
   clear_bit(node, dlm->domain_map);
 }
 spin_unlock(&dlm->spinlock);
}
