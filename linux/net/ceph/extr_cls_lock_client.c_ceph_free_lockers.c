
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct ceph_locker* cookie; } ;
struct ceph_locker {TYPE_1__ id; } ;


 int kfree (struct ceph_locker*) ;

void ceph_free_lockers(struct ceph_locker *lockers, u32 num_lockers)
{
 int i;

 for (i = 0; i < num_lockers; i++)
  kfree(lockers[i].id.cookie);
 kfree(lockers);
}
