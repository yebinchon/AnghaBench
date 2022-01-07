
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_sock {scalar_t__ xmit; } ;


 scalar_t__ packet_direct_xmit ;

__attribute__((used)) static bool packet_use_direct_xmit(const struct packet_sock *po)
{
 return po->xmit == packet_direct_xmit;
}
