
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dlm_node_iter {int dummy; } ;
struct dlm_master_list_entry {int dummy; } ;
struct TYPE_2__ {char* name; unsigned int len; } ;
struct dlm_lock_resource {int wq; int spinlock; int state; TYPE_1__ lockname; } ;
struct dlm_ctxt {int spinlock; int master_lock; int key; int node_num; } ;
struct dlm_assert_master {unsigned int namelen; int flags; int name; int node_idx; } ;
typedef int assert ;


 int BUG () ;
 int BUG_ON (int) ;
 int DLM_ASSERT_MASTER_MSG ;
 int DLM_ASSERT_RESPONSE_MASTERY_REF ;
 int DLM_ASSERT_RESPONSE_REASSERT ;
 int DLM_LOCK_RES_SETREF_INPROG ;
 int ML_ERROR ;
 unsigned int O2NM_MAX_NAME_LEN ;
 int __dlm_put_mle (struct dlm_master_list_entry*) ;
 int cpu_to_be32 (int ) ;
 scalar_t__ dlm_find_mle (struct dlm_ctxt*,struct dlm_master_list_entry**,char*,unsigned int) ;
 int dlm_is_host_down (int) ;
 int dlm_lockres_set_refmap_bit (struct dlm_ctxt*,struct dlm_lock_resource*,int) ;
 int dlm_node_iter_init (void*,struct dlm_node_iter*) ;
 int dlm_node_iter_next (struct dlm_node_iter*) ;
 int dlm_print_one_mle (struct dlm_master_list_entry*) ;
 int memcpy (int ,char const*,unsigned int) ;
 int memset (struct dlm_assert_master*,int ,int) ;
 int mlog (int ,char*,unsigned int,...) ;
 int o2net_send_message (int ,int ,struct dlm_assert_master*,int,int,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int dlm_do_assert_master(struct dlm_ctxt *dlm,
    struct dlm_lock_resource *res,
    void *nodemap, u32 flags)
{
 struct dlm_assert_master assert;
 int to, tmpret;
 struct dlm_node_iter iter;
 int ret = 0;
 int reassert;
 const char *lockname = res->lockname.name;
 unsigned int namelen = res->lockname.len;

 BUG_ON(namelen > O2NM_MAX_NAME_LEN);

 spin_lock(&res->spinlock);
 res->state |= DLM_LOCK_RES_SETREF_INPROG;
 spin_unlock(&res->spinlock);

again:
 reassert = 0;


 dlm_node_iter_init(nodemap, &iter);
 while ((to = dlm_node_iter_next(&iter)) >= 0) {
  int r = 0;
  struct dlm_master_list_entry *mle = ((void*)0);

  mlog(0, "sending assert master to %d (%.*s)\n", to,
       namelen, lockname);
  memset(&assert, 0, sizeof(assert));
  assert.node_idx = dlm->node_num;
  assert.namelen = namelen;
  memcpy(assert.name, lockname, namelen);
  assert.flags = cpu_to_be32(flags);

  tmpret = o2net_send_message(DLM_ASSERT_MASTER_MSG, dlm->key,
         &assert, sizeof(assert), to, &r);
  if (tmpret < 0) {
   mlog(ML_ERROR, "Error %d when sending message %u (key "
        "0x%x) to node %u\n", tmpret,
        DLM_ASSERT_MASTER_MSG, dlm->key, to);
   if (!dlm_is_host_down(tmpret)) {
    mlog(ML_ERROR, "unhandled error=%d!\n", tmpret);
    BUG();
   }

   mlog(0, "link to %d went down!\n", to);

   ret = tmpret;
   r = 0;
  } else if (r < 0) {

   mlog(ML_ERROR,"during assert master of %.*s to %u, "
        "got %d.\n", namelen, lockname, to, r);
   spin_lock(&dlm->spinlock);
   spin_lock(&dlm->master_lock);
   if (dlm_find_mle(dlm, &mle, (char *)lockname,
      namelen)) {
    dlm_print_one_mle(mle);
    __dlm_put_mle(mle);
   }
   spin_unlock(&dlm->master_lock);
   spin_unlock(&dlm->spinlock);
   BUG();
  }

  if (r & DLM_ASSERT_RESPONSE_REASSERT &&
      !(r & DLM_ASSERT_RESPONSE_MASTERY_REF)) {
    mlog(ML_ERROR, "%.*s: very strange, "
         "master MLE but no lockres on %u\n",
         namelen, lockname, to);
  }

  if (r & DLM_ASSERT_RESPONSE_REASSERT) {
   mlog(0, "%.*s: node %u create mles on other "
        "nodes and requests a re-assert\n",
        namelen, lockname, to);
   reassert = 1;
  }
  if (r & DLM_ASSERT_RESPONSE_MASTERY_REF) {
   mlog(0, "%.*s: node %u has a reference to this "
        "lockres, set the bit in the refmap\n",
        namelen, lockname, to);
   spin_lock(&res->spinlock);
   dlm_lockres_set_refmap_bit(dlm, res, to);
   spin_unlock(&res->spinlock);
  }
 }

 if (reassert)
  goto again;

 spin_lock(&res->spinlock);
 res->state &= ~DLM_LOCK_RES_SETREF_INPROG;
 spin_unlock(&res->spinlock);
 wake_up(&res->wq);

 return ret;
}
