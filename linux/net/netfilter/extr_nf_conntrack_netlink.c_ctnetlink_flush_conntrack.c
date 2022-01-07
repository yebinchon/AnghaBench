
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct ctnetlink_filter {int dummy; } ;


 size_t CTA_MARK ;
 size_t CTA_MARK_MASK ;
 scalar_t__ IS_ERR (struct ctnetlink_filter*) ;
 int PTR_ERR (struct ctnetlink_filter*) ;
 struct ctnetlink_filter* ctnetlink_alloc_filter (struct nlattr const* const*,scalar_t__) ;
 int ctnetlink_flush_iterate ;
 int kfree (struct ctnetlink_filter*) ;
 int nf_ct_iterate_cleanup_net (struct net*,int ,struct ctnetlink_filter*,int ,int) ;

__attribute__((used)) static int ctnetlink_flush_conntrack(struct net *net,
         const struct nlattr * const cda[],
         u32 portid, int report, u8 family)
{
 struct ctnetlink_filter *filter = ((void*)0);

 if (family || (cda[CTA_MARK] && cda[CTA_MARK_MASK])) {
  filter = ctnetlink_alloc_filter(cda, family);
  if (IS_ERR(filter))
   return PTR_ERR(filter);
 }

 nf_ct_iterate_cleanup_net(net, ctnetlink_flush_iterate, filter,
      portid, report);
 kfree(filter);

 return 0;
}
