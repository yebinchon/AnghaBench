
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;







 int OVS_CS_F_ESTABLISHED ;
 int OVS_CS_F_NEW ;
 int OVS_CS_F_RELATED ;
 int OVS_CS_F_REPLY_DIR ;
 int OVS_CS_F_TRACKED ;

__attribute__((used)) static u8 ovs_ct_get_state(enum ip_conntrack_info ctinfo)
{
 u8 ct_state = OVS_CS_F_TRACKED;

 switch (ctinfo) {
 case 131:
 case 128:
  ct_state |= OVS_CS_F_REPLY_DIR;
  break;
 default:
  break;
 }

 switch (ctinfo) {
 case 132:
 case 131:
  ct_state |= OVS_CS_F_ESTABLISHED;
  break;
 case 129:
 case 128:
  ct_state |= OVS_CS_F_RELATED;
  break;
 case 130:
  ct_state |= OVS_CS_F_NEW;
  break;
 default:
  break;
 }

 return ct_state;
}
