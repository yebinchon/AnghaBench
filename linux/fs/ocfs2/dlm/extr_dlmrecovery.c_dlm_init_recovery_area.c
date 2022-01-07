
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dlm_reco_node_data {int node_num; int list; int state; } ;
struct TYPE_2__ {int node_data; int node_map; } ;
struct dlm_ctxt {TYPE_1__ reco; int spinlock; int domain_map; } ;


 int BUG_ON (int) ;
 int DLM_RECO_NODE_DATA_INIT ;
 int ENOMEM ;
 int GFP_NOFS ;
 int O2NM_MAX_NODES ;
 int dlm_destroy_recovery_area (struct dlm_ctxt*) ;
 int dlm_reco_state_lock ;
 int find_next_bit (int ,int,int) ;
 struct dlm_reco_node_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_init_recovery_area(struct dlm_ctxt *dlm, u8 dead_node)
{
 int num=0;
 struct dlm_reco_node_data *ndata;

 spin_lock(&dlm->spinlock);
 memcpy(dlm->reco.node_map, dlm->domain_map, sizeof(dlm->domain_map));


 spin_unlock(&dlm->spinlock);

 while (1) {
  num = find_next_bit (dlm->reco.node_map, O2NM_MAX_NODES, num);
  if (num >= O2NM_MAX_NODES) {
   break;
  }
  BUG_ON(num == dead_node);

  ndata = kzalloc(sizeof(*ndata), GFP_NOFS);
  if (!ndata) {
   dlm_destroy_recovery_area(dlm);
   return -ENOMEM;
  }
  ndata->node_num = num;
  ndata->state = DLM_RECO_NODE_DATA_INIT;
  spin_lock(&dlm_reco_state_lock);
  list_add_tail(&ndata->list, &dlm->reco.node_data);
  spin_unlock(&dlm_reco_state_lock);
  num++;
 }

 return 0;
}
