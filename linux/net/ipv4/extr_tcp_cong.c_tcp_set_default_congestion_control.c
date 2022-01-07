
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_congestion_ops {int flags; int owner; } ;
struct TYPE_2__ {int tcp_congestion_control; } ;
struct net {TYPE_1__ ipv4; } ;


 int EBUSY ;
 int ENOENT ;
 int TCP_CONG_NON_RESTRICTED ;
 int module_put (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct tcp_congestion_ops* tcp_ca_find_autoload (struct net*,char const*) ;
 int try_module_get (int ) ;
 struct tcp_congestion_ops* xchg (int *,struct tcp_congestion_ops*) ;

int tcp_set_default_congestion_control(struct net *net, const char *name)
{
 struct tcp_congestion_ops *ca;
 const struct tcp_congestion_ops *prev;
 int ret;

 rcu_read_lock();
 ca = tcp_ca_find_autoload(net, name);
 if (!ca) {
  ret = -ENOENT;
 } else if (!try_module_get(ca->owner)) {
  ret = -EBUSY;
 } else {
  prev = xchg(&net->ipv4.tcp_congestion_control, ca);
  if (prev)
   module_put(prev->owner);

  ca->flags |= TCP_CONG_NON_RESTRICTED;
  ret = 0;
 }
 rcu_read_unlock();

 return ret;
}
