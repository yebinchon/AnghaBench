
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;


 int cgroup_idr_lock ;
 int idr_remove (struct idr*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void cgroup_idr_remove(struct idr *idr, int id)
{
 spin_lock_bh(&cgroup_idr_lock);
 idr_remove(idr, id);
 spin_unlock_bh(&cgroup_idr_lock);
}
