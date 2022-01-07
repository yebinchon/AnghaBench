
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gcov_info {struct gcov_info* filename; struct gcov_info* functions; TYPE_1__* counts; } ;
struct TYPE_2__ {int values; } ;


 int kfree (struct gcov_info*) ;
 unsigned int num_counter_active (struct gcov_info*) ;
 int vfree (int ) ;

void gcov_info_free(struct gcov_info *info)
{
 unsigned int active = num_counter_active(info);
 unsigned int i;

 for (i = 0; i < active ; i++)
  vfree(info->counts[i].values);
 kfree(info->functions);
 kfree(info->filename);
 kfree(info);
}
