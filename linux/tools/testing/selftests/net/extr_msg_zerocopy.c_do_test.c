
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_MAXPACKET ;
 int PF_PACKET ;
 int SOCK_DGRAM ;
 scalar_t__ cfg_cork ;
 int cfg_cpu ;
 scalar_t__ cfg_rx ;
 int do_rx (int,int,int) ;
 int do_setcpu (int ) ;
 int do_tx (int,int,int) ;
 int error (int,int ,char*) ;
 char* payload ;

__attribute__((used)) static void do_test(int domain, int type, int protocol)
{
 int i;

 if (cfg_cork && (domain == PF_PACKET || type != SOCK_DGRAM))
  error(1, 0, "can only cork udp sockets");

 do_setcpu(cfg_cpu);

 for (i = 0; i < IP_MAXPACKET; i++)
  payload[i] = 'a' + (i % 26);

 if (cfg_rx)
  do_rx(domain, type, protocol);
 else
  do_tx(domain, type, protocol);
}
