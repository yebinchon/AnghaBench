
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct tc_u_common* data; } ;
struct tc_u_knode {int dummy; } ;
struct tc_u_hnode {int refcnt; scalar_t__ is_root; int handle; } ;
struct tc_u_common {int refcnt; scalar_t__ knodes; } ;
struct netlink_ext_ack {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 scalar_t__ TC_U32_KEY (int ) ;
 int u32_delete_key (struct tcf_proto*,struct tc_u_knode*) ;
 int u32_destroy_hnode (struct tcf_proto*,struct tc_u_hnode*,struct netlink_ext_ack*) ;
 int u32_remove_hw_knode (struct tcf_proto*,struct tc_u_knode*,struct netlink_ext_ack*) ;

__attribute__((used)) static int u32_delete(struct tcf_proto *tp, void *arg, bool *last,
        bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct tc_u_hnode *ht = arg;
 struct tc_u_common *tp_c = tp->data;
 int ret = 0;

 if (TC_U32_KEY(ht->handle)) {
  u32_remove_hw_knode(tp, (struct tc_u_knode *)ht, extack);
  ret = u32_delete_key(tp, (struct tc_u_knode *)ht);
  goto out;
 }

 if (ht->is_root) {
  NL_SET_ERR_MSG_MOD(extack, "Not allowed to delete root node");
  return -EINVAL;
 }

 if (ht->refcnt == 1) {
  u32_destroy_hnode(tp, ht, extack);
 } else {
  NL_SET_ERR_MSG_MOD(extack, "Can not delete in-use filter");
  return -EBUSY;
 }

out:
 *last = tp_c->refcnt == 1 && tp_c->knodes == 0;
 return ret;
}
