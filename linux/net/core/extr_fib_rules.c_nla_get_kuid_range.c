
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct fib_rule_uid_range {int end; int start; } ;
struct fib_kuid_range {void* end; void* start; } ;


 size_t FRA_UID_RANGE ;
 int current_user_ns () ;
 void* make_kuid (int ,int ) ;
 scalar_t__ nla_data (struct nlattr*) ;

__attribute__((used)) static struct fib_kuid_range nla_get_kuid_range(struct nlattr **tb)
{
 struct fib_rule_uid_range *in;
 struct fib_kuid_range out;

 in = (struct fib_rule_uid_range *)nla_data(tb[FRA_UID_RANGE]);

 out.start = make_kuid(current_user_ns(), in->start);
 out.end = make_kuid(current_user_ns(), in->end);

 return out;
}
