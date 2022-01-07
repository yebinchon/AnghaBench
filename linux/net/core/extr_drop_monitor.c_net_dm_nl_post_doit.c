
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_ops {int dummy; } ;
struct genl_info {int dummy; } ;


 int mutex_unlock (int *) ;
 int net_dm_mutex ;

__attribute__((used)) static void net_dm_nl_post_doit(const struct genl_ops *ops,
    struct sk_buff *skb, struct genl_info *info)
{
 mutex_unlock(&net_dm_mutex);
}
