
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CP_FASTBOOT ;
 int CP_UMOUNT ;

__attribute__((used)) static inline bool __remain_node_summaries(int reason)
{
 return (reason & (CP_UMOUNT | CP_FASTBOOT));
}
