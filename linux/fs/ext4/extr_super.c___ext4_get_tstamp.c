
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
typedef scalar_t__ __u8 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static time64_t __ext4_get_tstamp(__le32 *lo, __u8 *hi)
{
 return ((time64_t)(*hi) << 32) + le32_to_cpu(*lo);
}
