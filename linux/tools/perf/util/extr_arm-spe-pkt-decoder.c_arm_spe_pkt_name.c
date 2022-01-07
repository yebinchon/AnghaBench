
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum arm_spe_pkt_type { ____Placeholder_arm_spe_pkt_type } arm_spe_pkt_type ;


 char const** arm_spe_packet_name ;

const char *arm_spe_pkt_name(enum arm_spe_pkt_type type)
{
 return arm_spe_packet_name[type];
}
