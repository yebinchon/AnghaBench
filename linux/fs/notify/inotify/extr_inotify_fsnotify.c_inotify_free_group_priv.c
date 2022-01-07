
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ucounts; int idr; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;


 int dec_inotify_instances (scalar_t__) ;
 int idr_callback ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,struct fsnotify_group*) ;

__attribute__((used)) static void inotify_free_group_priv(struct fsnotify_group *group)
{

 idr_for_each(&group->inotify_data.idr, idr_callback, group);
 idr_destroy(&group->inotify_data.idr);
 if (group->inotify_data.ucounts)
  dec_inotify_instances(group->inotify_data.ucounts);
}
