
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int * attrs; } ;


 size_t NET_DM_ATTR_QUEUE_LEN ;
 int net_dm_queue_len ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static void net_dm_queue_len_set(struct genl_info *info)
{
 if (!info->attrs[NET_DM_ATTR_QUEUE_LEN])
  return;

 net_dm_queue_len = nla_get_u32(info->attrs[NET_DM_ATTR_QUEUE_LEN]);
}
