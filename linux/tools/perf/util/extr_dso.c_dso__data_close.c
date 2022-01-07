
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int dummy; } ;


 int close_dso (struct dso*) ;
 int dso__data_open_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void dso__data_close(struct dso *dso)
{
 pthread_mutex_lock(&dso__data_open_lock);
 close_dso(dso);
 pthread_mutex_unlock(&dso__data_open_lock);
}
