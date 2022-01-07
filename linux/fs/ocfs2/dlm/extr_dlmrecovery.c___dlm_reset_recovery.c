
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dead_node; } ;
struct dlm_ctxt {int recovery_map; TYPE_1__ reco; int spinlock; } ;


 int O2NM_INVALID_NODE_NUM ;
 int assert_spin_locked (int *) ;
 int clear_bit (int ,int ) ;
 int dlm_set_reco_dead_node (struct dlm_ctxt*,int ) ;
 int dlm_set_reco_master (struct dlm_ctxt*,int ) ;

__attribute__((used)) static inline void __dlm_reset_recovery(struct dlm_ctxt *dlm)
{
 assert_spin_locked(&dlm->spinlock);
 clear_bit(dlm->reco.dead_node, dlm->recovery_map);
 dlm_set_reco_dead_node(dlm, O2NM_INVALID_NODE_NUM);
 dlm_set_reco_master(dlm, O2NM_INVALID_NODE_NUM);
}
