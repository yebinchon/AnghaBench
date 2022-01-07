
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct o2nm_node {int nd_ipv4_port; int nd_ipv4_address; int nd_num; } ;
struct dlm_query_nodeinfo {int qn_nodenum; int qn_numnodes; int qn_namelen; int qn_domain; TYPE_1__* qn_nodes; } ;
struct dlm_ctxt {int node_num; int name; } ;
struct TYPE_2__ {int ni_ipv4_address; int ni_ipv4_port; int ni_nodenum; } ;


 int DLM_MOD_KEY ;
 int DLM_QUERY_NODEINFO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ML_ERROR ;
 int O2NM_MAX_NODES ;
 int find_next_bit (unsigned long*,int,int) ;
 int kfree (struct dlm_query_nodeinfo*) ;
 struct dlm_query_nodeinfo* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mlog (int ,char*,int,...) ;
 int mlog_errno (int) ;
 int ntohs (int ) ;
 int o2net_send_message (int ,int ,struct dlm_query_nodeinfo*,int,int,int*) ;
 struct o2nm_node* o2nm_get_node_by_num (int) ;
 int o2nm_node_put (struct o2nm_node*) ;
 int strlen (int ) ;

__attribute__((used)) static int dlm_send_nodeinfo(struct dlm_ctxt *dlm, unsigned long *node_map)
{
 struct dlm_query_nodeinfo *qn = ((void*)0);
 struct o2nm_node *node;
 int ret = 0, status, count, i;

 if (find_next_bit(node_map, O2NM_MAX_NODES, 0) >= O2NM_MAX_NODES)
  goto bail;

 qn = kzalloc(sizeof(struct dlm_query_nodeinfo), GFP_KERNEL);
 if (!qn) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto bail;
 }

 for (i = 0, count = 0; i < O2NM_MAX_NODES; ++i) {
  node = o2nm_get_node_by_num(i);
  if (!node)
   continue;
  qn->qn_nodes[count].ni_nodenum = node->nd_num;
  qn->qn_nodes[count].ni_ipv4_port = node->nd_ipv4_port;
  qn->qn_nodes[count].ni_ipv4_address = node->nd_ipv4_address;
  mlog(0, "Node %3d, %pI4:%u\n", node->nd_num,
       &(node->nd_ipv4_address), ntohs(node->nd_ipv4_port));
  ++count;
  o2nm_node_put(node);
 }

 qn->qn_nodenum = dlm->node_num;
 qn->qn_numnodes = count;
 qn->qn_namelen = strlen(dlm->name);
 memcpy(qn->qn_domain, dlm->name, qn->qn_namelen);

 i = -1;
 while ((i = find_next_bit(node_map, O2NM_MAX_NODES,
      i + 1)) < O2NM_MAX_NODES) {
  if (i == dlm->node_num)
   continue;

  mlog(0, "Sending nodeinfo to node %d\n", i);

  ret = o2net_send_message(DLM_QUERY_NODEINFO, DLM_MOD_KEY,
      qn, sizeof(struct dlm_query_nodeinfo),
      i, &status);
  if (ret >= 0)
   ret = status;
  if (ret) {
   mlog(ML_ERROR, "node mismatch %d, node %d\n", ret, i);
   break;
  }
 }

bail:
 kfree(qn);
 return ret;
}
