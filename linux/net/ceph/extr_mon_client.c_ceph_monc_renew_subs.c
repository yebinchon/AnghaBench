
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_client {int mutex; } ;


 int __send_subscribe (struct ceph_mon_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ceph_monc_renew_subs(struct ceph_mon_client *monc)
{
 mutex_lock(&monc->mutex);
 __send_subscribe(monc);
 mutex_unlock(&monc->mutex);
}
