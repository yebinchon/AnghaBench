
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; int len; } ;
struct dlm_lock_resource {int owner; TYPE_2__ lockname; } ;
struct TYPE_3__ {int cookie; int type; } ;
struct dlm_lock {TYPE_1__ ml; } ;
struct dlm_ctxt {int name; int key; int node_num; } ;
struct dlm_create_lock {int name; int namelen; int flags; int cookie; int requested_type; int node_idx; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;
typedef int create ;


 int BUG () ;
 int DLM_CREATE_LOCK_MSG ;
 int DLM_RECOVERING ;
 int DLM_REJECTED ;
 int ML_ERROR ;
 int cpu_to_be32 (int) ;
 int dlm_err_to_dlm_status (int) ;
 scalar_t__ dlm_is_host_down (int) ;
 int dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_create_lock*,int ,int) ;
 int mlog (int ,char*,int ,int ,int ,int,...) ;
 int o2net_send_message (int ,int ,struct dlm_create_lock*,int,int ,int*) ;

__attribute__((used)) static enum dlm_status dlm_send_remote_lock_request(struct dlm_ctxt *dlm,
            struct dlm_lock_resource *res,
            struct dlm_lock *lock, int flags)
{
 struct dlm_create_lock create;
 int tmpret, status = 0;
 enum dlm_status ret;

 memset(&create, 0, sizeof(create));
 create.node_idx = dlm->node_num;
 create.requested_type = lock->ml.type;
 create.cookie = lock->ml.cookie;
 create.namelen = res->lockname.len;
 create.flags = cpu_to_be32(flags);
 memcpy(create.name, res->lockname.name, create.namelen);

 tmpret = o2net_send_message(DLM_CREATE_LOCK_MSG, dlm->key, &create,
        sizeof(create), res->owner, &status);
 if (tmpret >= 0) {
  ret = status;
  if (ret == DLM_REJECTED) {
   mlog(ML_ERROR, "%s: res %.*s, Stale lockres no longer "
        "owned by node %u. That node is coming back up "
        "currently.\n", dlm->name, create.namelen,
        create.name, res->owner);
   dlm_print_one_lock_resource(res);
   BUG();
  }
 } else {
  mlog(ML_ERROR, "%s: res %.*s, Error %d send CREATE LOCK to "
       "node %u\n", dlm->name, create.namelen, create.name,
       tmpret, res->owner);
  if (dlm_is_host_down(tmpret))
   ret = DLM_RECOVERING;
  else
   ret = dlm_err_to_dlm_status(tmpret);
 }

 return ret;
}
