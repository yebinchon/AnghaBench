
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int sid; } ;
struct sel_netport {TYPE_1__ psec; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sel_netport* sel_netport_find (int ,int ) ;
 int sel_netport_sid_slow (int ,int ,int *) ;

int sel_netport_sid(u8 protocol, u16 pnum, u32 *sid)
{
 struct sel_netport *port;

 rcu_read_lock();
 port = sel_netport_find(protocol, pnum);
 if (port != ((void*)0)) {
  *sid = port->psec.sid;
  rcu_read_unlock();
  return 0;
 }
 rcu_read_unlock();

 return sel_netport_sid_slow(protocol, pnum, sid);
}
