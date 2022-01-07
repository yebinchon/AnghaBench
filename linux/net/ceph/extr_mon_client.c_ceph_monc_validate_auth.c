
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_client {int mutex; } ;


 int __validate_auth (struct ceph_mon_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ceph_monc_validate_auth(struct ceph_mon_client *monc)
{
 int ret;

 mutex_lock(&monc->mutex);
 ret = __validate_auth(monc);
 mutex_unlock(&monc->mutex);
 return ret;
}
