
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int ICMPMSGOUT_INC_STATS (struct net*,unsigned char) ;
 int ICMP_INC_STATS (struct net*,int ) ;
 int ICMP_MIB_OUTMSGS ;

void icmp_out_count(struct net *net, unsigned char type)
{
 ICMPMSGOUT_INC_STATS(net, type);
 ICMP_INC_STATS(net, ICMP_MIB_OUTMSGS);
}
