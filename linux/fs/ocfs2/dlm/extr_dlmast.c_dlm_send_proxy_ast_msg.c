
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvec {int iov_len; struct dlm_proxy_ast* iov_base; } ;
struct dlm_proxy_ast {int type; int blocked_type; int flags; int cookie; int namelen; int name; int node_idx; } ;
struct TYPE_5__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_2__ lockname; } ;
struct TYPE_6__ {int node; int cookie; } ;
struct dlm_lock {TYPE_3__ ml; TYPE_1__* lksb; } ;
struct dlm_ctxt {int name; int key; int node_num; } ;
struct TYPE_4__ {struct dlm_proxy_ast* lvb; } ;


 int BUG () ;
 int DLM_IVLOCKID ;
 int DLM_LKSB_GET_LVB ;
 int DLM_LVB_LEN ;
 int DLM_MIGRATING ;
 int DLM_NORMAL ;
 int DLM_PROXY_AST_MSG ;
 int DLM_RECOVERING ;
 int LKM_GET_LVB ;
 int ML_ERROR ;
 int be32_add_cpu (int *,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_proxy_ast*,int ,int) ;
 int mlog (int ,char*,int ,...) ;
 int o2net_send_message_vec (int ,int ,struct kvec*,size_t,int ,int*) ;

int dlm_send_proxy_ast_msg(struct dlm_ctxt *dlm, struct dlm_lock_resource *res,
      struct dlm_lock *lock, int msg_type,
      int blocked_type, int flags)
{
 int ret = 0;
 struct dlm_proxy_ast past;
 struct kvec vec[2];
 size_t veclen = 1;
 int status;

 mlog(0, "%s: res %.*s, to %u, type %d, blocked_type %d\n", dlm->name,
      res->lockname.len, res->lockname.name, lock->ml.node, msg_type,
      blocked_type);

 memset(&past, 0, sizeof(struct dlm_proxy_ast));
 past.node_idx = dlm->node_num;
 past.type = msg_type;
 past.blocked_type = blocked_type;
 past.namelen = res->lockname.len;
 memcpy(past.name, res->lockname.name, past.namelen);
 past.cookie = lock->ml.cookie;

 vec[0].iov_len = sizeof(struct dlm_proxy_ast);
 vec[0].iov_base = &past;
 if (flags & DLM_LKSB_GET_LVB) {
  be32_add_cpu(&past.flags, LKM_GET_LVB);
  vec[1].iov_len = DLM_LVB_LEN;
  vec[1].iov_base = lock->lksb->lvb;
  veclen++;
 }

 ret = o2net_send_message_vec(DLM_PROXY_AST_MSG, dlm->key, vec, veclen,
         lock->ml.node, &status);
 if (ret < 0)
  mlog(ML_ERROR, "%s: res %.*s, error %d send AST to node %u\n",
       dlm->name, res->lockname.len, res->lockname.name, ret,
       lock->ml.node);
 else {
  if (status == DLM_RECOVERING) {
   mlog(ML_ERROR, "sent AST to node %u, it thinks this "
        "node is dead!\n", lock->ml.node);
   BUG();
  } else if (status == DLM_MIGRATING) {
   mlog(ML_ERROR, "sent AST to node %u, it returned "
        "DLM_MIGRATING!\n", lock->ml.node);
   BUG();
  } else if (status != DLM_NORMAL && status != DLM_IVLOCKID) {
   mlog(ML_ERROR, "AST to node %u returned %d!\n",
        lock->ml.node, status);

  }
  ret = 0;
 }
 return ret;
}
