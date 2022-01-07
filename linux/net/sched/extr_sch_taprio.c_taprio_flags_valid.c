
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TCA_TAPRIO_ATTR_FLAG_FULL_OFFLOAD ;
 int TCA_TAPRIO_ATTR_FLAG_TXTIME_ASSIST ;

__attribute__((used)) static bool taprio_flags_valid(u32 flags)
{

 if (flags & ~(TCA_TAPRIO_ATTR_FLAG_TXTIME_ASSIST |
        TCA_TAPRIO_ATTR_FLAG_FULL_OFFLOAD))
  return 0;

 if ((flags & TCA_TAPRIO_ATTR_FLAG_TXTIME_ASSIST) &&
     (flags & TCA_TAPRIO_ATTR_FLAG_FULL_OFFLOAD))
  return 0;
 return 1;
}
