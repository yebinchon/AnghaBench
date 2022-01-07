
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 int cgroup_idr_lock ;
 void* idr_replace (struct idr*,void*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void *cgroup_idr_replace(struct idr *idr, void *ptr, int id)
{
 void *ret;

 spin_lock_bh(&cgroup_idr_lock);
 ret = idr_replace(idr, ptr, id);
 spin_unlock_bh(&cgroup_idr_lock);
 return ret;
}
