
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {char* name; unsigned int len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_deref_lockres_done {unsigned int namelen; int name; int node_idx; } ;
struct dlm_ctxt {int name; int key; int node_num; } ;
typedef int deref ;


 int BUG_ON (int) ;
 int DLM_DEREF_LOCKRES_DONE ;
 int ML_ERROR ;
 unsigned int O2NM_MAX_NAME_LEN ;
 int dlm_print_one_lock_resource (struct dlm_lock_resource*) ;
 int memcpy (int ,char const*,unsigned int) ;
 int memset (struct dlm_deref_lockres_done*,int ,int) ;
 int mlog (int ,char*,int ,unsigned int,char const*,int,int) ;
 int o2net_send_message (int ,int ,struct dlm_deref_lockres_done*,int,int,int*) ;

__attribute__((used)) static void dlm_drop_lockres_ref_done(struct dlm_ctxt *dlm,
  struct dlm_lock_resource *res, u8 node)
{
 struct dlm_deref_lockres_done deref;
 int ret = 0, r;
 const char *lockname;
 unsigned int namelen;

 lockname = res->lockname.name;
 namelen = res->lockname.len;
 BUG_ON(namelen > O2NM_MAX_NAME_LEN);

 memset(&deref, 0, sizeof(deref));
 deref.node_idx = dlm->node_num;
 deref.namelen = namelen;
 memcpy(deref.name, lockname, namelen);

 ret = o2net_send_message(DLM_DEREF_LOCKRES_DONE, dlm->key,
     &deref, sizeof(deref), node, &r);
 if (ret < 0) {
  mlog(ML_ERROR, "%s: res %.*s, error %d send DEREF DONE "
    " to node %u\n", dlm->name, namelen,
    lockname, ret, node);
 } else if (r < 0) {

  mlog(ML_ERROR, "%s: res %.*s, DEREF to node %u got %d\n",
       dlm->name, namelen, lockname, node, r);
  dlm_print_one_lock_resource(res);
 }
}
