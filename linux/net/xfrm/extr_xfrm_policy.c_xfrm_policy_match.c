
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct xfrm_selector {int dummy; } ;
struct TYPE_2__ {int m; int v; } ;
struct xfrm_policy {scalar_t__ if_id; scalar_t__ type; int security; TYPE_1__ mark; int family; struct xfrm_selector selector; } ;
struct flowi {int flowi_mark; int flowi_secid; } ;


 int ESRCH ;
 int security_xfrm_policy_lookup (int ,int ,int) ;
 int xfrm_selector_match (struct xfrm_selector const*,struct flowi const*,int ) ;

__attribute__((used)) static int xfrm_policy_match(const struct xfrm_policy *pol,
        const struct flowi *fl,
        u8 type, u16 family, int dir, u32 if_id)
{
 const struct xfrm_selector *sel = &pol->selector;
 int ret = -ESRCH;
 bool match;

 if (pol->family != family ||
     pol->if_id != if_id ||
     (fl->flowi_mark & pol->mark.m) != pol->mark.v ||
     pol->type != type)
  return ret;

 match = xfrm_selector_match(sel, fl, family);
 if (match)
  ret = security_xfrm_policy_lookup(pol->security, fl->flowi_secid,
        dir);
 return ret;
}
