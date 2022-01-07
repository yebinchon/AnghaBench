
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uid; int kid; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* dapm_map ;

__attribute__((used)) static int get_widget_id(int tplg_type)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dapm_map); i++) {
  if (tplg_type == dapm_map[i].uid)
   return dapm_map[i].kid;
 }

 return -EINVAL;
}
