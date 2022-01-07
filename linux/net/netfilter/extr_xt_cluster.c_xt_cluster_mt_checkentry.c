
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {int family; int net; struct xt_cluster_match_info* matchinfo; } ;
struct xt_cluster_match_info {unsigned long long total_nodes; unsigned long long node_mask; } ;


 int EDOM ;
 int EINVAL ;
 unsigned long long XT_CLUSTER_NODES_MAX ;
 int nf_ct_netns_get (int ,int ) ;
 int pr_info_ratelimited (char*,...) ;

__attribute__((used)) static int xt_cluster_mt_checkentry(const struct xt_mtchk_param *par)
{
 struct xt_cluster_match_info *info = par->matchinfo;
 int ret;

 if (info->total_nodes > XT_CLUSTER_NODES_MAX) {
  pr_info_ratelimited("you have exceeded the maximum number of cluster nodes (%u > %u)\n",
        info->total_nodes, XT_CLUSTER_NODES_MAX);
  return -EINVAL;
 }
 if (info->node_mask >= (1ULL << info->total_nodes)) {
  pr_info_ratelimited("node mask cannot exceed total number of nodes\n");
  return -EDOM;
 }

 ret = nf_ct_netns_get(par->net, par->family);
 if (ret < 0)
  pr_info_ratelimited("cannot load conntrack support for proto=%u\n",
        par->family);
 return ret;
}
