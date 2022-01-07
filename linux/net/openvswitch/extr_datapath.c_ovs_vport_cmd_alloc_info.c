
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static struct sk_buff *ovs_vport_cmd_alloc_info(void)
{
 return nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
}
