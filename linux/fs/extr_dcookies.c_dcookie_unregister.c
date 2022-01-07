
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcookie_user {int next; } ;


 int dcookie_exit () ;
 int dcookie_mutex ;
 int is_live () ;
 int kfree (struct dcookie_user*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dcookie_unregister(struct dcookie_user * user)
{
 mutex_lock(&dcookie_mutex);

 list_del(&user->next);
 kfree(user);

 if (!is_live())
  dcookie_exit();

 mutex_unlock(&dcookie_mutex);
}
