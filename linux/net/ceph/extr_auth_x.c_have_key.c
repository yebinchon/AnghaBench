
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_ticket_handler {int have_key; scalar_t__ expires; } ;


 scalar_t__ ktime_get_real_seconds () ;

__attribute__((used)) static bool have_key(struct ceph_x_ticket_handler *th)
{
 if (th->have_key) {
  if (ktime_get_real_seconds() >= th->expires)
   th->have_key = 0;
 }

 return th->have_key;
}
