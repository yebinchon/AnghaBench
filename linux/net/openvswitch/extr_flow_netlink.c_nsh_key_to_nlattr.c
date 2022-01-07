
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ mdtype; } ;
struct ovs_key_nsh {TYPE_1__* context; TYPE_1__ base; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 scalar_t__ NSH_M_TYPE1 ;
 int OVS_KEY_ATTR_NSH ;
 int OVS_NSH_KEY_ATTR_BASE ;
 int OVS_NSH_KEY_ATTR_MD1 ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,TYPE_1__*) ;

__attribute__((used)) static int nsh_key_to_nlattr(const struct ovs_key_nsh *nsh, bool is_mask,
        struct sk_buff *skb)
{
 struct nlattr *start;

 start = nla_nest_start_noflag(skb, OVS_KEY_ATTR_NSH);
 if (!start)
  return -EMSGSIZE;

 if (nla_put(skb, OVS_NSH_KEY_ATTR_BASE, sizeof(nsh->base), &nsh->base))
  goto nla_put_failure;

 if (is_mask || nsh->base.mdtype == NSH_M_TYPE1) {
  if (nla_put(skb, OVS_NSH_KEY_ATTR_MD1,
       sizeof(nsh->context), nsh->context))
   goto nla_put_failure;
 }



 nla_nest_end(skb, start);

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
