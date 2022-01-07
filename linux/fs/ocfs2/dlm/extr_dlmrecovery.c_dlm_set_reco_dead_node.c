
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ dead_node; } ;
struct dlm_ctxt {TYPE_1__ reco; int name; int spinlock; } ;


 int assert_spin_locked (int *) ;
 int mlog (int ,char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void dlm_set_reco_dead_node(struct dlm_ctxt *dlm,
       u8 dead_node)
{
 assert_spin_locked(&dlm->spinlock);
 if (dlm->reco.dead_node != dead_node)
  mlog(0, "%s: changing dead_node from %u to %u\n",
       dlm->name, dlm->reco.dead_node, dead_node);
 dlm->reco.dead_node = dead_node;
}
