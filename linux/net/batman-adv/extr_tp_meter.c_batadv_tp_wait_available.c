
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_tp_vars {int more_bytes; } ;


 int HZ ;
 int batadv_tp_avail (struct batadv_tp_vars*,size_t) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;

__attribute__((used)) static int batadv_tp_wait_available(struct batadv_tp_vars *tp_vars, size_t plen)
{
 int ret;

 ret = wait_event_interruptible_timeout(tp_vars->more_bytes,
            batadv_tp_avail(tp_vars, plen),
            HZ / 10);

 return ret;
}
