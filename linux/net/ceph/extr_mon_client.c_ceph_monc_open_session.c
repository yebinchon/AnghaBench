
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_client {int mutex; } ;


 int CEPH_SUB_MONMAP ;
 int CEPH_SUB_OSDMAP ;
 int __ceph_monc_want_map (struct ceph_mon_client*,int ,int ,int) ;
 int __open_session (struct ceph_mon_client*) ;
 int __schedule_delayed (struct ceph_mon_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ceph_monc_open_session(struct ceph_mon_client *monc)
{
 mutex_lock(&monc->mutex);
 __ceph_monc_want_map(monc, CEPH_SUB_MONMAP, 0, 1);
 __ceph_monc_want_map(monc, CEPH_SUB_OSDMAP, 0, 0);
 __open_session(monc);
 __schedule_delayed(monc);
 mutex_unlock(&monc->mutex);
 return 0;
}
