
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_ticket_handler {scalar_t__ renew_after; int have_key; } ;


 scalar_t__ ktime_get_real_seconds () ;

__attribute__((used)) static bool need_key(struct ceph_x_ticket_handler *th)
{
 if (!th->have_key)
  return 1;

 return ktime_get_real_seconds() >= th->renew_after;
}
