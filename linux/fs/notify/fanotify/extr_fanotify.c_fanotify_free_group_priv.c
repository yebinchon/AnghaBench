
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_struct {int fanotify_listeners; } ;
struct TYPE_2__ {struct user_struct* user; } ;
struct fsnotify_group {TYPE_1__ fanotify_data; } ;


 int atomic_dec (int *) ;
 int free_uid (struct user_struct*) ;

__attribute__((used)) static void fanotify_free_group_priv(struct fsnotify_group *group)
{
 struct user_struct *user;

 user = group->fanotify_data.user;
 atomic_dec(&user->fanotify_listeners);
 free_uid(user);
}
