
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_dm_stats {int dropped; } ;


 int EMSGSIZE ;
 int NET_DM_ATTR_PAD ;
 int NET_DM_ATTR_STATS ;
 int NET_DM_ATTR_STATS_DROPPED ;
 int net_dm_stats_read (struct net_dm_stats*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int net_dm_stats_put(struct sk_buff *msg)
{
 struct net_dm_stats stats;
 struct nlattr *attr;

 net_dm_stats_read(&stats);

 attr = nla_nest_start(msg, NET_DM_ATTR_STATS);
 if (!attr)
  return -EMSGSIZE;

 if (nla_put_u64_64bit(msg, NET_DM_ATTR_STATS_DROPPED,
         stats.dropped, NET_DM_ATTR_PAD))
  goto nla_put_failure;

 nla_nest_end(msg, attr);

 return 0;

nla_put_failure:
 nla_nest_cancel(msg, attr);
 return -EMSGSIZE;
}
