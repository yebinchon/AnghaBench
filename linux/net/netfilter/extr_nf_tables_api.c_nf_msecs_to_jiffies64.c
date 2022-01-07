
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nlattr {int dummy; } ;


 int ERANGE ;
 scalar_t__ NSEC_PER_MSEC ;
 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ div_u64 (scalar_t__,scalar_t__) ;
 int nla_get_be64 (struct nlattr const*) ;
 scalar_t__ nsecs_to_jiffies64 (scalar_t__) ;

__attribute__((used)) static int nf_msecs_to_jiffies64(const struct nlattr *nla, u64 *result)
{
 u64 ms = be64_to_cpu(nla_get_be64(nla));
 u64 max = (u64)(~((u64)0));

 max = div_u64(max, NSEC_PER_MSEC);
 if (ms >= max)
  return -ERANGE;

 ms *= NSEC_PER_MSEC;
 *result = nsecs_to_jiffies64(ms);
 return 0;
}
