
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t __u8 ;
struct TYPE_2__ {int mutex; } ;


 int mutex_unlock (int *) ;
 TYPE_1__* table ;

void nfnl_unlock(__u8 subsys_id)
{
 mutex_unlock(&table[subsys_id].mutex);
}
