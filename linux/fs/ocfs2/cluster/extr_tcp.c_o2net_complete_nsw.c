
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct o2net_status_wait {int dummy; } ;
struct o2net_node {int nn_lock; int nn_status_idr; } ;
typedef int s32 ;
typedef enum o2net_system_error { ____Placeholder_o2net_system_error } o2net_system_error ;


 scalar_t__ INT_MAX ;
 struct o2net_status_wait* idr_find (int *,scalar_t__) ;
 int o2net_complete_nsw_locked (struct o2net_node*,struct o2net_status_wait*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void o2net_complete_nsw(struct o2net_node *nn,
          struct o2net_status_wait *nsw,
          u64 id, enum o2net_system_error sys_status,
          s32 status)
{
 spin_lock(&nn->nn_lock);
 if (nsw == ((void*)0)) {
  if (id > INT_MAX)
   goto out;

  nsw = idr_find(&nn->nn_status_idr, id);
  if (nsw == ((void*)0))
   goto out;
 }

 o2net_complete_nsw_locked(nn, nsw, sys_status, status);

out:
 spin_unlock(&nn->nn_lock);
 return;
}
