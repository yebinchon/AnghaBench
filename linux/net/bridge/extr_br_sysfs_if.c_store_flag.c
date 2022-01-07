
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {unsigned long flags; } ;


 int br_port_flags_change (struct net_bridge_port*,unsigned long) ;

__attribute__((used)) static int store_flag(struct net_bridge_port *p, unsigned long v,
        unsigned long mask)
{
 unsigned long flags;

 flags = p->flags;

 if (v)
  flags |= mask;
 else
  flags &= ~mask;

 if (flags != p->flags) {
  p->flags = flags;
  br_port_flags_change(p, mask);
 }
 return 0;
}
