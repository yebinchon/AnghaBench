
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct net_dm_hw_metadata {int trap_name; int trap_group_name; } ;
struct TYPE_2__ {scalar_t__ hdrsize; } ;


 scalar_t__ GENL_HDRLEN ;
 size_t NLMSG_ALIGN (size_t) ;
 size_t net_dm_in_port_size () ;
 TYPE_1__ net_drop_monitor_family ;
 size_t nla_total_size (size_t) ;
 size_t nlmsg_msg_size (scalar_t__) ;
 int strlen (int ) ;

__attribute__((used)) static size_t
net_dm_hw_packet_report_size(size_t payload_len,
        const struct net_dm_hw_metadata *hw_metadata)
{
 size_t size;

 size = nlmsg_msg_size(GENL_HDRLEN + net_drop_monitor_family.hdrsize);

 return NLMSG_ALIGN(size) +

        nla_total_size(sizeof(u16)) +

        nla_total_size(strlen(hw_metadata->trap_group_name) + 1) +

        nla_total_size(strlen(hw_metadata->trap_name) + 1) +

        net_dm_in_port_size() +

        nla_total_size(sizeof(u64)) +

        nla_total_size(sizeof(u32)) +

        nla_total_size(sizeof(u16)) +

        nla_total_size(payload_len);
}
