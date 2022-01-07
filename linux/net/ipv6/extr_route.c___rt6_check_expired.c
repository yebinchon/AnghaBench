
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expires; } ;
struct rt6_info {int rt6i_flags; TYPE_1__ dst; } ;


 int RTF_EXPIRES ;
 int jiffies ;
 int time_after (int ,int ) ;

__attribute__((used)) static bool __rt6_check_expired(const struct rt6_info *rt)
{
 if (rt->rt6i_flags & RTF_EXPIRES)
  return time_after(jiffies, rt->dst.expires);
 else
  return 0;
}
