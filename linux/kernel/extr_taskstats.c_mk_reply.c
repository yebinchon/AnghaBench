
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct taskstats {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int pid ;


 int TASKSTATS_TYPE_AGGR_PID ;
 int TASKSTATS_TYPE_AGGR_TGID ;
 int TASKSTATS_TYPE_NULL ;
 int TASKSTATS_TYPE_PID ;
 int TASKSTATS_TYPE_STATS ;
 struct taskstats* nla_data (struct nlattr*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put (struct sk_buff*,int,int,int *) ;
 struct nlattr* nla_reserve_64bit (struct sk_buff*,int ,int,int ) ;

__attribute__((used)) static struct taskstats *mk_reply(struct sk_buff *skb, int type, u32 pid)
{
 struct nlattr *na, *ret;
 int aggr;

 aggr = (type == TASKSTATS_TYPE_PID)
   ? TASKSTATS_TYPE_AGGR_PID
   : TASKSTATS_TYPE_AGGR_TGID;

 na = nla_nest_start_noflag(skb, aggr);
 if (!na)
  goto err;

 if (nla_put(skb, type, sizeof(pid), &pid) < 0) {
  nla_nest_cancel(skb, na);
  goto err;
 }
 ret = nla_reserve_64bit(skb, TASKSTATS_TYPE_STATS,
    sizeof(struct taskstats), TASKSTATS_TYPE_NULL);
 if (!ret) {
  nla_nest_cancel(skb, na);
  goto err;
 }
 nla_nest_end(skb, na);

 return nla_data(ret);
err:
 return ((void*)0);
}
