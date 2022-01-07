
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* range; int lock; } ;
struct TYPE_4__ {TYPE_1__ ip_local_ports; } ;
struct net {TYPE_2__ ipv4; } ;


 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

void inet_get_local_port_range(struct net *net, int *low, int *high)
{
 unsigned int seq;

 do {
  seq = read_seqbegin(&net->ipv4.ip_local_ports.lock);

  *low = net->ipv4.ip_local_ports.range[0];
  *high = net->ipv4.ip_local_ports.range[1];
 } while (read_seqretry(&net->ipv4.ip_local_ports.lock, seq));
}
