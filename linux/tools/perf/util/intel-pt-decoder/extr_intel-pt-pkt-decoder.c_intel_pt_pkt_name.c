
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_pt_pkt_type { ____Placeholder_intel_pt_pkt_type } intel_pt_pkt_type ;


 char const** packet_name ;

const char *intel_pt_pkt_name(enum intel_pt_pkt_type type)
{
 return packet_name[type];
}
