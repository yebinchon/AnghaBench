
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CREDITS_PER_JIFFY ;
 int HZ ;
 int XT_LIMIT_SCALE ;

__attribute__((used)) static u32 user2credits(u32 user)
{

 if (user > 0xFFFFFFFF / (HZ*CREDITS_PER_JIFFY))

  return (user / XT_LIMIT_SCALE) * HZ * CREDITS_PER_JIFFY;

 return (user * HZ * CREDITS_PER_JIFFY) / XT_LIMIT_SCALE;
}
