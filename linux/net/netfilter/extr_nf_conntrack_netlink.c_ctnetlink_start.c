
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nlattr {int dummy; } ;
struct nfgenmsg {scalar_t__ nfgen_family; } ;
struct netlink_callback {struct nlattr** data; int nlh; } ;
typedef struct nlattr* ctnetlink_filter ;


 size_t CTA_MARK ;
 size_t CTA_MARK_MASK ;
 scalar_t__ IS_ERR (struct nlattr**) ;
 int PTR_ERR (struct nlattr**) ;
 struct nlattr** ctnetlink_alloc_filter (struct nlattr const* const*,scalar_t__) ;
 struct nfgenmsg* nlmsg_data (int ) ;

__attribute__((used)) static int ctnetlink_start(struct netlink_callback *cb)
{
 const struct nlattr * const *cda = cb->data;
 struct ctnetlink_filter *filter = ((void*)0);
 struct nfgenmsg *nfmsg = nlmsg_data(cb->nlh);
 u8 family = nfmsg->nfgen_family;

 if (family || (cda[CTA_MARK] && cda[CTA_MARK_MASK])) {
  filter = ctnetlink_alloc_filter(cda, family);
  if (IS_ERR(filter))
   return PTR_ERR(filter);
 }

 cb->data = filter;
 return 0;
}
