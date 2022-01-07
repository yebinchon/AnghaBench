
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int name; int node_num; } ;
struct dlm_cancel_join {int name_len; int domain; int node_idx; } ;
typedef int cancel_msg ;


 int DLM_CANCEL_JOIN_MSG ;
 int DLM_MOD_KEY ;
 int ML_ERROR ;
 int memcpy (int ,int ,int ) ;
 int memset (struct dlm_cancel_join*,int ,int) ;
 int mlog (int ,char*,int,int ,int ,unsigned int) ;
 int o2net_send_message (int ,int ,struct dlm_cancel_join*,int,unsigned int,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int dlm_send_one_join_cancel(struct dlm_ctxt *dlm,
        unsigned int node)
{
 int status;
 struct dlm_cancel_join cancel_msg;

 memset(&cancel_msg, 0, sizeof(cancel_msg));
 cancel_msg.node_idx = dlm->node_num;
 cancel_msg.name_len = strlen(dlm->name);
 memcpy(cancel_msg.domain, dlm->name, cancel_msg.name_len);

 status = o2net_send_message(DLM_CANCEL_JOIN_MSG, DLM_MOD_KEY,
        &cancel_msg, sizeof(cancel_msg), node,
        ((void*)0));
 if (status < 0) {
  mlog(ML_ERROR, "Error %d when sending message %u (key 0x%x) to "
       "node %u\n", status, DLM_CANCEL_JOIN_MSG, DLM_MOD_KEY,
       node);
  goto bail;
 }

bail:
 return status;
}
