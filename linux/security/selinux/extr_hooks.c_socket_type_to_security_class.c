
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int IPPROTO_ICMP ;
 int IPPROTO_ICMPV6 ;
 int IPPROTO_SCTP ;
 int SECCLASS_ALG_SOCKET ;
 int SECCLASS_APPLETALK_SOCKET ;
 int SECCLASS_ATMPVC_SOCKET ;
 int SECCLASS_ATMSVC_SOCKET ;
 int SECCLASS_AX25_SOCKET ;
 int SECCLASS_BLUETOOTH_SOCKET ;
 int SECCLASS_CAIF_SOCKET ;
 int SECCLASS_CAN_SOCKET ;
 int SECCLASS_DCCP_SOCKET ;
 int SECCLASS_DECNET_SOCKET ;
 int SECCLASS_ICMP_SOCKET ;
 int SECCLASS_IEEE802154_SOCKET ;
 int SECCLASS_IPX_SOCKET ;
 int SECCLASS_IRDA_SOCKET ;
 int SECCLASS_ISDN_SOCKET ;
 int SECCLASS_IUCV_SOCKET ;
 int SECCLASS_KCM_SOCKET ;
 int SECCLASS_KEY_SOCKET ;
 int SECCLASS_LLC_SOCKET ;
 int SECCLASS_NETLINK_AUDIT_SOCKET ;
 int SECCLASS_NETLINK_CONNECTOR_SOCKET ;
 int SECCLASS_NETLINK_CRYPTO_SOCKET ;
 int SECCLASS_NETLINK_DNRT_SOCKET ;
 int SECCLASS_NETLINK_FIB_LOOKUP_SOCKET ;
 int SECCLASS_NETLINK_GENERIC_SOCKET ;
 int SECCLASS_NETLINK_ISCSI_SOCKET ;
 int SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET ;
 int SECCLASS_NETLINK_NETFILTER_SOCKET ;
 int SECCLASS_NETLINK_NFLOG_SOCKET ;
 int SECCLASS_NETLINK_RDMA_SOCKET ;
 int SECCLASS_NETLINK_ROUTE_SOCKET ;
 int SECCLASS_NETLINK_SCSITRANSPORT_SOCKET ;
 int SECCLASS_NETLINK_SELINUX_SOCKET ;
 int SECCLASS_NETLINK_SOCKET ;
 int SECCLASS_NETLINK_TCPDIAG_SOCKET ;
 int SECCLASS_NETLINK_XFRM_SOCKET ;
 int SECCLASS_NETROM_SOCKET ;
 int SECCLASS_NFC_SOCKET ;
 int SECCLASS_PACKET_SOCKET ;
 int SECCLASS_PHONET_SOCKET ;
 int SECCLASS_PPPOX_SOCKET ;
 int SECCLASS_QIPCRTR_SOCKET ;
 int SECCLASS_RAWIP_SOCKET ;
 int SECCLASS_RDS_SOCKET ;
 int SECCLASS_ROSE_SOCKET ;
 int SECCLASS_RXRPC_SOCKET ;
 int SECCLASS_SCTP_SOCKET ;
 int SECCLASS_SMC_SOCKET ;
 int SECCLASS_SOCKET ;
 int SECCLASS_TCP_SOCKET ;
 int SECCLASS_TIPC_SOCKET ;
 int SECCLASS_UDP_SOCKET ;
 int SECCLASS_UNIX_DGRAM_SOCKET ;
 int SECCLASS_UNIX_STREAM_SOCKET ;
 int SECCLASS_VSOCK_SOCKET ;
 int SECCLASS_X25_SOCKET ;
 int SECCLASS_XDP_SOCKET ;





 int default_protocol_dgram (int) ;
 int default_protocol_stream (int) ;
 int selinux_policycap_extsockclass () ;

__attribute__((used)) static inline u16 socket_type_to_security_class(int family, int type, int protocol)
{
 int extsockclass = selinux_policycap_extsockclass();

 switch (family) {
 case 136:
  switch (type) {
  case 128:
  case 129:
   return SECCLASS_UNIX_STREAM_SOCKET;
  case 131:
  case 130:
   return SECCLASS_UNIX_DGRAM_SOCKET;
  }
  break;
 case 157:
 case 156:
  switch (type) {
  case 128:
  case 129:
   if (default_protocol_stream(protocol))
    return SECCLASS_TCP_SOCKET;
   else if (extsockclass && protocol == IPPROTO_SCTP)
    return SECCLASS_SCTP_SOCKET;
   else
    return SECCLASS_RAWIP_SOCKET;
  case 131:
   if (default_protocol_dgram(protocol))
    return SECCLASS_UDP_SOCKET;
   else if (extsockclass && (protocol == IPPROTO_ICMP ||
        protocol == IPPROTO_ICMPV6))
    return SECCLASS_ICMP_SOCKET;
   else
    return SECCLASS_RAWIP_SOCKET;
  case 132:
   return SECCLASS_DCCP_SOCKET;
  default:
   return SECCLASS_RAWIP_SOCKET;
  }
  break;
 case 148:
  switch (protocol) {
  case 172:
   return SECCLASS_NETLINK_ROUTE_SOCKET;
  case 169:
   return SECCLASS_NETLINK_TCPDIAG_SOCKET;
  case 174:
   return SECCLASS_NETLINK_NFLOG_SOCKET;
  case 168:
   return SECCLASS_NETLINK_XFRM_SOCKET;
  case 170:
   return SECCLASS_NETLINK_SELINUX_SOCKET;
  case 177:
   return SECCLASS_NETLINK_ISCSI_SOCKET;
  case 183:
   return SECCLASS_NETLINK_AUDIT_SOCKET;
  case 179:
   return SECCLASS_NETLINK_FIB_LOOKUP_SOCKET;
  case 182:
   return SECCLASS_NETLINK_CONNECTOR_SOCKET;
  case 175:
   return SECCLASS_NETLINK_NETFILTER_SOCKET;
  case 180:
   return SECCLASS_NETLINK_DNRT_SOCKET;
  case 176:
   return SECCLASS_NETLINK_KOBJECT_UEVENT_SOCKET;
  case 178:
   return SECCLASS_NETLINK_GENERIC_SOCKET;
  case 171:
   return SECCLASS_NETLINK_SCSITRANSPORT_SOCKET;
  case 173:
   return SECCLASS_NETLINK_RDMA_SOCKET;
  case 181:
   return SECCLASS_NETLINK_CRYPTO_SOCKET;
  default:
   return SECCLASS_NETLINK_SOCKET;
  }
 case 145:
  return SECCLASS_PACKET_SOCKET;
 case 150:
  return SECCLASS_KEY_SOCKET;
 case 166:
  return SECCLASS_APPLETALK_SOCKET;
 }

 if (extsockclass) {
  switch (family) {
  case 163:
   return SECCLASS_AX25_SOCKET;
  case 155:
   return SECCLASS_IPX_SOCKET;
  case 147:
   return SECCLASS_NETROM_SOCKET;
  case 165:
   return SECCLASS_ATMPVC_SOCKET;
  case 134:
   return SECCLASS_X25_SOCKET;
  case 140:
   return SECCLASS_ROSE_SOCKET;
  case 159:
   return SECCLASS_DECNET_SOCKET;
  case 164:
   return SECCLASS_ATMSVC_SOCKET;
  case 141:
   return SECCLASS_RDS_SOCKET;
  case 154:
   return SECCLASS_IRDA_SOCKET;
  case 143:
   return SECCLASS_PPPOX_SOCKET;
  case 149:
   return SECCLASS_LLC_SOCKET;
  case 160:
   return SECCLASS_CAN_SOCKET;
  case 137:
   return SECCLASS_TIPC_SOCKET;
  case 162:
   return SECCLASS_BLUETOOTH_SOCKET;
  case 152:
   return SECCLASS_IUCV_SOCKET;
  case 139:
   return SECCLASS_RXRPC_SOCKET;
  case 153:
   return SECCLASS_ISDN_SOCKET;
  case 144:
   return SECCLASS_PHONET_SOCKET;
  case 158:
   return SECCLASS_IEEE802154_SOCKET;
  case 161:
   return SECCLASS_CAIF_SOCKET;
  case 167:
   return SECCLASS_ALG_SOCKET;
  case 146:
   return SECCLASS_NFC_SOCKET;
  case 135:
   return SECCLASS_VSOCK_SOCKET;
  case 151:
   return SECCLASS_KCM_SOCKET;
  case 142:
   return SECCLASS_QIPCRTR_SOCKET;
  case 138:
   return SECCLASS_SMC_SOCKET;
  case 133:
   return SECCLASS_XDP_SOCKET;



  }
 }

 return SECCLASS_SOCKET;
}
