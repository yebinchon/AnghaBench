
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_table {size_t af; } ;
struct TYPE_2__ {int mutex; } ;


 int mutex_unlock (int *) ;
 TYPE_1__* xt ;

void xt_table_unlock(struct xt_table *table)
{
 mutex_unlock(&xt[table->af].mutex);
}
