
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int GFP_KERNEL ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 int ovs_dp_cmd_msg_size () ;

__attribute__((used)) static struct sk_buff *ovs_dp_cmd_alloc_info(void)
{
 return genlmsg_new(ovs_dp_cmd_msg_size(), GFP_KERNEL);
}
