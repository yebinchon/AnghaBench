
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_object {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* dump ) (struct sk_buff*,struct nft_object*,int) ;} ;


 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,unsigned int) ;
 scalar_t__ stub1 (struct sk_buff*,struct nft_object*,int) ;

__attribute__((used)) static int nft_object_dump(struct sk_buff *skb, unsigned int attr,
      struct nft_object *obj, bool reset)
{
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, attr);
 if (!nest)
  goto nla_put_failure;
 if (obj->ops->dump(skb, obj, reset) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest);
 return 0;

nla_put_failure:
 return -1;
}
