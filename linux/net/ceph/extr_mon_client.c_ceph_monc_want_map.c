
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_mon_client {int mutex; } ;


 int __ceph_monc_want_map (struct ceph_mon_client*,int,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool ceph_monc_want_map(struct ceph_mon_client *monc, int sub, u32 epoch,
   bool continuous)
{
 bool need_request;

 mutex_lock(&monc->mutex);
 need_request = __ceph_monc_want_map(monc, sub, epoch, continuous);
 mutex_unlock(&monc->mutex);

 return need_request;
}
