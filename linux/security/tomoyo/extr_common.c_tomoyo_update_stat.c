
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int ktime_get_real_seconds () ;
 int * tomoyo_stat_modified ;
 int * tomoyo_stat_updated ;

void tomoyo_update_stat(const u8 index)
{



 tomoyo_stat_updated[index]++;
 tomoyo_stat_modified[index] = ktime_get_real_seconds();
}
