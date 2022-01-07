
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int seg6_genl_sethmac(struct sk_buff *skb, struct genl_info *info)
{
 return -ENOTSUPP;
}
