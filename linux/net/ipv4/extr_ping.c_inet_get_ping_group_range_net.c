
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int * range; } ;
struct TYPE_4__ {TYPE_1__ ping_group_range; } ;
struct net {TYPE_2__ ipv4; } ;
typedef int kgid_t ;


 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

__attribute__((used)) static void inet_get_ping_group_range_net(struct net *net, kgid_t *low,
       kgid_t *high)
{
 kgid_t *data = net->ipv4.ping_group_range.range;
 unsigned int seq;

 do {
  seq = read_seqbegin(&net->ipv4.ping_group_range.lock);

  *low = data[0];
  *high = data[1];
 } while (read_seqretry(&net->ipv4.ping_group_range.lock, seq));
}
