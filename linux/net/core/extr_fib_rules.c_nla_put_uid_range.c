
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fib_rule_uid_range {int member_1; int member_0; } ;
struct fib_kuid_range {int end; int start; } ;
typedef int out ;


 int FRA_UID_RANGE ;
 int current_user_ns () ;
 int from_kuid_munged (int ,int ) ;
 int nla_put (struct sk_buff*,int ,int,struct fib_rule_uid_range*) ;

__attribute__((used)) static int nla_put_uid_range(struct sk_buff *skb, struct fib_kuid_range *range)
{
 struct fib_rule_uid_range out = {
  from_kuid_munged(current_user_ns(), range->start),
  from_kuid_munged(current_user_ns(), range->end)
 };

 return nla_put(skb, FRA_UID_RANGE, sizeof(out), &out);
}
