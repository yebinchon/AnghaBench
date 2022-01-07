
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_client {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reopen_session (struct ceph_mon_client*) ;

void ceph_monc_reopen_session(struct ceph_mon_client *monc)
{
 mutex_lock(&monc->mutex);
 reopen_session(monc);
 mutex_unlock(&monc->mutex);
}
