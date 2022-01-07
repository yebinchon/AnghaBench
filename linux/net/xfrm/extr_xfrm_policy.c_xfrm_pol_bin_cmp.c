
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_pol_inexact_key {int dir; int type; int family; int if_id; int net; } ;
struct TYPE_2__ {int dir; int type; int family; int if_id; int net; } ;
struct xfrm_pol_inexact_bin {TYPE_1__ k; } ;
struct rhashtable_compare_arg {struct xfrm_pol_inexact_key* key; } ;


 int net_eq (int ,int ) ;
 int read_pnet (int *) ;

__attribute__((used)) static int xfrm_pol_bin_cmp(struct rhashtable_compare_arg *arg,
       const void *ptr)
{
 const struct xfrm_pol_inexact_key *key = arg->key;
 const struct xfrm_pol_inexact_bin *b = ptr;
 int ret;

 if (!net_eq(read_pnet(&b->k.net), read_pnet(&key->net)))
  return -1;

 ret = b->k.dir ^ key->dir;
 if (ret)
  return ret;

 ret = b->k.type ^ key->type;
 if (ret)
  return ret;

 ret = b->k.family ^ key->family;
 if (ret)
  return ret;

 return b->k.if_id ^ key->if_id;
}
