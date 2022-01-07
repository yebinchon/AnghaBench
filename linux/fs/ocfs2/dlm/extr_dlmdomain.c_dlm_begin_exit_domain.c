
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pv_major; int pv_minor; } ;
struct dlm_ctxt {int node_num; int spinlock; int domain_map; TYPE_1__ dlm_locking_proto; } ;


 int DLM_BEGIN_EXIT_DOMAIN_MSG ;
 int O2NM_MAX_NODES ;
 int dlm_send_one_domain_exit (struct dlm_ctxt*,int ,int) ;
 int find_next_bit (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dlm_begin_exit_domain(struct dlm_ctxt *dlm)
{
 int node = -1;


 if (dlm->dlm_locking_proto.pv_major == 1 &&
     dlm->dlm_locking_proto.pv_minor < 2)
  return;






 spin_lock(&dlm->spinlock);
 while (1) {
  node = find_next_bit(dlm->domain_map, O2NM_MAX_NODES, node + 1);
  if (node >= O2NM_MAX_NODES)
   break;
  if (node == dlm->node_num)
   continue;

  spin_unlock(&dlm->spinlock);
  dlm_send_one_domain_exit(dlm, DLM_BEGIN_EXIT_DOMAIN_MSG, node);
  spin_lock(&dlm->spinlock);
 }
 spin_unlock(&dlm->spinlock);
}
