
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_mon_client {int mutex; } ;


 int __ceph_monc_got_map (struct ceph_mon_client*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ceph_monc_got_map(struct ceph_mon_client *monc, int sub, u32 epoch)
{
 mutex_lock(&monc->mutex);
 __ceph_monc_got_map(monc, sub, epoch);
 mutex_unlock(&monc->mutex);
}
