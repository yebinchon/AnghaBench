
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct can_proto {TYPE_1__* prot; } ;
struct TYPE_2__ {int owner; } ;


 int * proto_tab ;
 struct can_proto* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_module_get (int ) ;

__attribute__((used)) static const struct can_proto *can_get_proto(int protocol)
{
 const struct can_proto *cp;

 rcu_read_lock();
 cp = rcu_dereference(proto_tab[protocol]);
 if (cp && !try_module_get(cp->prot->owner))
  cp = ((void*)0);
 rcu_read_unlock();

 return cp;
}
