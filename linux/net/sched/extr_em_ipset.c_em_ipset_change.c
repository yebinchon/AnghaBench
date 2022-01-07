
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_set_info {int index; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct net {int dummy; } ;
typedef scalar_t__ ip_set_id_t ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IPSET_INVALID_ID ;
 scalar_t__ ip_set_nfnl_get_byindex (struct net*,int ) ;
 int ip_set_nfnl_put (struct net*,scalar_t__) ;
 scalar_t__ kmemdup (void*,int,int ) ;

__attribute__((used)) static int em_ipset_change(struct net *net, void *data, int data_len,
      struct tcf_ematch *em)
{
 struct xt_set_info *set = data;
 ip_set_id_t index;

 if (data_len != sizeof(*set))
  return -EINVAL;

 index = ip_set_nfnl_get_byindex(net, set->index);
 if (index == IPSET_INVALID_ID)
  return -ENOENT;

 em->datalen = sizeof(*set);
 em->data = (unsigned long)kmemdup(data, em->datalen, GFP_KERNEL);
 if (em->data)
  return 0;

 ip_set_nfnl_put(net, index);
 return -ENOMEM;
}
