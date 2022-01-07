
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROTOCOL_OVERRIDE ;
 int pr_info (char*) ;

__attribute__((used)) static bool vmci_transport_old_proto_override(bool *old_pkt_proto)
{
 if (PROTOCOL_OVERRIDE != -1) {
  if (PROTOCOL_OVERRIDE == 0)
   *old_pkt_proto = 1;
  else
   *old_pkt_proto = 0;

  pr_info("Proto override in use\n");
  return 1;
 }

 return 0;
}
