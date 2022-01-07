
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_node_iter {int curnode; } ;
struct dlm_finalize_reco {int node_idx; int flags; int dead_node; } ;
struct TYPE_2__ {int dead_node; } ;
struct dlm_ctxt {int node_num; int key; TYPE_1__ reco; int spinlock; int domain_map; int name; } ;
typedef int fr ;


 int DLM_FINALIZE_RECO_MSG ;
 int DLM_FINALIZE_STAGE2 ;
 int ML_ERROR ;
 scalar_t__ dlm_is_host_down (int) ;
 int dlm_node_iter_init (int ,struct dlm_node_iter*) ;
 int dlm_node_iter_next (struct dlm_node_iter*) ;
 int memset (struct dlm_finalize_reco*,int ,int) ;
 int mlog (int ,char*,int,...) ;
 int o2net_send_message (int ,int ,struct dlm_finalize_reco*,int,int,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_send_finalize_reco_message(struct dlm_ctxt *dlm)
{
 int ret = 0;
 struct dlm_finalize_reco fr;
 struct dlm_node_iter iter;
 int nodenum;
 int status;
 int stage = 1;

 mlog(0, "finishing recovery for node %s:%u, "
      "stage %d\n", dlm->name, dlm->reco.dead_node, stage);

 spin_lock(&dlm->spinlock);
 dlm_node_iter_init(dlm->domain_map, &iter);
 spin_unlock(&dlm->spinlock);

stage2:
 memset(&fr, 0, sizeof(fr));
 fr.node_idx = dlm->node_num;
 fr.dead_node = dlm->reco.dead_node;
 if (stage == 2)
  fr.flags |= DLM_FINALIZE_STAGE2;

 while ((nodenum = dlm_node_iter_next(&iter)) >= 0) {
  if (nodenum == dlm->node_num)
   continue;
  ret = o2net_send_message(DLM_FINALIZE_RECO_MSG, dlm->key,
      &fr, sizeof(fr), nodenum, &status);
  if (ret >= 0)
   ret = status;
  if (ret < 0) {
   mlog(ML_ERROR, "Error %d when sending message %u (key "
        "0x%x) to node %u\n", ret, DLM_FINALIZE_RECO_MSG,
        dlm->key, nodenum);
   if (dlm_is_host_down(ret)) {



    mlog(ML_ERROR, "node %u went down after this "
         "node finished recovery.\n", nodenum);
    ret = 0;
    continue;
   }
   break;
  }
 }
 if (stage == 1) {

  iter.curnode = -1;
  stage = 2;
  goto stage2;
 }

 return ret;
}
