
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int dsa2_mutex ;
 int dsa_switch_remove (struct dsa_switch*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dsa_unregister_switch(struct dsa_switch *ds)
{
 mutex_lock(&dsa2_mutex);
 dsa_switch_remove(ds);
 mutex_unlock(&dsa2_mutex);
}
