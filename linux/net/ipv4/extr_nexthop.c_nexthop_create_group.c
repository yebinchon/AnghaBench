
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct nh_info {scalar_t__ family; } ;
struct nh_group {int is_group; int num_nh; int has_v4; int mpath; TYPE_1__* nh_entries; int nh_grp; int grp_list; int nh_info; } ;
struct nh_config {scalar_t__ nh_grp_type; struct nlattr* nh_grp; } ;
struct nexthop_grp {scalar_t__ weight; int id; } ;
struct nexthop {int is_group; int num_nh; int has_v4; int mpath; TYPE_1__* nh_entries; int nh_grp; int grp_list; int nh_info; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct nh_group* nh; struct nh_group* nh_parent; int nh_list; scalar_t__ weight; } ;


 scalar_t__ AF_INET ;
 int ENOENT ;
 int ENOMEM ;
 struct nh_group* ERR_PTR (int ) ;
 scalar_t__ NEXTHOP_GRP_TYPE_MPATH ;
 int kfree (struct nh_group*) ;
 int list_add (int *,int *) ;
 struct nh_group* nexthop_alloc () ;
 struct nh_group* nexthop_find_by_id (struct net*,int ) ;
 int nexthop_get (struct nh_group*) ;
 struct nh_group* nexthop_grp_alloc (int) ;
 int nexthop_put (struct nh_group*) ;
 int nh_group_rebalance (struct nh_group*) ;
 struct nexthop_grp* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int rcu_assign_pointer (int ,struct nh_group*) ;
 struct nh_info* rtnl_dereference (int ) ;

__attribute__((used)) static struct nexthop *nexthop_create_group(struct net *net,
         struct nh_config *cfg)
{
 struct nlattr *grps_attr = cfg->nh_grp;
 struct nexthop_grp *entry = nla_data(grps_attr);
 struct nh_group *nhg;
 struct nexthop *nh;
 int i;

 nh = nexthop_alloc();
 if (!nh)
  return ERR_PTR(-ENOMEM);

 nh->is_group = 1;

 nhg = nexthop_grp_alloc(nla_len(grps_attr) / sizeof(*entry));
 if (!nhg) {
  kfree(nh);
  return ERR_PTR(-ENOMEM);
 }

 for (i = 0; i < nhg->num_nh; ++i) {
  struct nexthop *nhe;
  struct nh_info *nhi;

  nhe = nexthop_find_by_id(net, entry[i].id);
  if (!nexthop_get(nhe))
   goto out_no_nh;

  nhi = rtnl_dereference(nhe->nh_info);
  if (nhi->family == AF_INET)
   nhg->has_v4 = 1;

  nhg->nh_entries[i].nh = nhe;
  nhg->nh_entries[i].weight = entry[i].weight + 1;
  list_add(&nhg->nh_entries[i].nh_list, &nhe->grp_list);
  nhg->nh_entries[i].nh_parent = nh;
 }

 if (cfg->nh_grp_type == NEXTHOP_GRP_TYPE_MPATH) {
  nhg->mpath = 1;
  nh_group_rebalance(nhg);
 }

 rcu_assign_pointer(nh->nh_grp, nhg);

 return nh;

out_no_nh:
 for (; i >= 0; --i)
  nexthop_put(nhg->nh_entries[i].nh);

 kfree(nhg);
 kfree(nh);

 return ERR_PTR(-ENOENT);
}
