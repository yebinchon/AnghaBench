
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phonet_protocol {TYPE_1__* prot; } ;
struct TYPE_2__ {int owner; } ;


 unsigned int PHONET_NPROTO ;
 int * proto_tab ;
 struct phonet_protocol* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int try_module_get (int ) ;

__attribute__((used)) static const struct phonet_protocol *phonet_proto_get(unsigned int protocol)
{
 const struct phonet_protocol *pp;

 if (protocol >= PHONET_NPROTO)
  return ((void*)0);

 rcu_read_lock();
 pp = rcu_dereference(proto_tab[protocol]);
 if (pp && !try_module_get(pp->prot->owner))
  pp = ((void*)0);
 rcu_read_unlock();

 return pp;
}
