
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;
struct genl_family {int dummy; } ;


 int GFP_KERNEL ;
 int genl_notify (struct genl_family*,struct sk_buff*,struct genl_info*,int ,int ) ;

__attribute__((used)) static void ovs_notify(struct genl_family *family,
         struct sk_buff *skb, struct genl_info *info)
{
 genl_notify(family, skb, info, 0, GFP_KERNEL);
}
