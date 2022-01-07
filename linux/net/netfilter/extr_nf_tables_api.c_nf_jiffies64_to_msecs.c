
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be64 ;


 int cpu_to_be64 (int ) ;
 int jiffies64_to_msecs (int ) ;

__attribute__((used)) static __be64 nf_jiffies64_to_msecs(u64 input)
{
 return cpu_to_be64(jiffies64_to_msecs(input));
}
