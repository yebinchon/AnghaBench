
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {void* mask; void* val; } ;
struct ctnetlink_filter {TYPE_1__ mark; int family; } ;


 size_t CTA_MARK ;
 size_t CTA_MARK_MASK ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct ctnetlink_filter* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct ctnetlink_filter* kzalloc (int,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static struct ctnetlink_filter *
ctnetlink_alloc_filter(const struct nlattr * const cda[], u8 family)
{
 struct ctnetlink_filter *filter;


 if (cda[CTA_MARK] && cda[CTA_MARK_MASK])
  return ERR_PTR(-EOPNOTSUPP);


 filter = kzalloc(sizeof(*filter), GFP_KERNEL);
 if (filter == ((void*)0))
  return ERR_PTR(-ENOMEM);

 filter->family = family;







 return filter;
}
