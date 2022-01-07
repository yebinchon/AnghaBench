
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int warned; int* range; int lock; } ;
struct TYPE_4__ {TYPE_1__ ip_local_ports; } ;
struct net {TYPE_2__ ipv4; } ;


 int pr_err_ratelimited (char*) ;
 int write_seqlock_bh (int *) ;
 int write_sequnlock_bh (int *) ;

__attribute__((used)) static void set_local_port_range(struct net *net, int range[2])
{
 bool same_parity = !((range[0] ^ range[1]) & 1);

 write_seqlock_bh(&net->ipv4.ip_local_ports.lock);
 if (same_parity && !net->ipv4.ip_local_ports.warned) {
  net->ipv4.ip_local_ports.warned = 1;
  pr_err_ratelimited("ip_local_port_range: prefer different parity for start/end values.\n");
 }
 net->ipv4.ip_local_ports.range[0] = range[0];
 net->ipv4.ip_local_ports.range[1] = range[1];
 write_sequnlock_bh(&net->ipv4.ip_local_ports.lock);
}
