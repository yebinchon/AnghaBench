
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ hdrsize; } ;


 scalar_t__ GENL_HDRLEN ;
 int NET_DM_MAX_SYMBOL_LEN ;
 size_t NLMSG_ALIGN (size_t) ;
 size_t net_dm_in_port_size () ;
 TYPE_1__ net_drop_monitor_family ;
 size_t nla_total_size (size_t) ;
 size_t nlmsg_msg_size (scalar_t__) ;

__attribute__((used)) static size_t net_dm_packet_report_size(size_t payload_len)
{
 size_t size;

 size = nlmsg_msg_size(GENL_HDRLEN + net_drop_monitor_family.hdrsize);

 return NLMSG_ALIGN(size) +

        nla_total_size(sizeof(u16)) +

        nla_total_size(sizeof(u64)) +

        nla_total_size(NET_DM_MAX_SYMBOL_LEN + 1) +

        net_dm_in_port_size() +

        nla_total_size(sizeof(u64)) +

        nla_total_size(sizeof(u32)) +

        nla_total_size(sizeof(u16)) +

        nla_total_size(payload_len);
}
