
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amp_mgr {int amp_ctrls_lock; int amp_ctrls; } ;
struct amp_ctrl {int list; int id; int kref; } ;


 int BT_DBG (char*,struct amp_mgr*,struct amp_ctrl*) ;
 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct amp_ctrl* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct amp_ctrl *amp_ctrl_add(struct amp_mgr *mgr, u8 id)
{
 struct amp_ctrl *ctrl;

 ctrl = kzalloc(sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return ((void*)0);

 kref_init(&ctrl->kref);
 ctrl->id = id;

 mutex_lock(&mgr->amp_ctrls_lock);
 list_add(&ctrl->list, &mgr->amp_ctrls);
 mutex_unlock(&mgr->amp_ctrls_lock);

 BT_DBG("mgr %p ctrl %p", mgr, ctrl);

 return ctrl;
}
