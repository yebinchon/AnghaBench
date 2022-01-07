
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
typedef int u16 ;
struct vmci_transport_waiting_info {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct TYPE_4__ {void* size; int wait; void* mode; struct vmci_handle handle; } ;
struct TYPE_3__ {int payload_size; void* dst; void* src; } ;
struct vmci_transport_packet {int type; int proto; TYPE_2__ u; int _reserved2; int dst_port; int src_port; int version; TYPE_1__ dg; } ;
struct sockaddr_vm {int svm_port; int svm_cid; } ;


 int VMADDR_CID_ANY ;
 int VMCI_TRANSPORT_PACKET_RID ;
 int VMCI_TRANSPORT_PACKET_VERSION ;
 int memcpy (int *,struct vmci_transport_waiting_info*,int) ;
 int memset (int *,int ,int) ;
 void* vmci_make_handle (int ,int ) ;
 int vmci_transport_peer_rid (int ) ;

__attribute__((used)) static inline void
vmci_transport_packet_init(struct vmci_transport_packet *pkt,
      struct sockaddr_vm *src,
      struct sockaddr_vm *dst,
      u8 type,
      u64 size,
      u64 mode,
      struct vmci_transport_waiting_info *wait,
      u16 proto,
      struct vmci_handle handle)
{



 pkt->dg.src = vmci_make_handle(VMADDR_CID_ANY,
           VMCI_TRANSPORT_PACKET_RID);
 pkt->dg.dst = vmci_make_handle(dst->svm_cid,
           vmci_transport_peer_rid(dst->svm_cid));
 pkt->dg.payload_size = sizeof(*pkt) - sizeof(pkt->dg);
 pkt->version = VMCI_TRANSPORT_PACKET_VERSION;
 pkt->type = type;
 pkt->src_port = src->svm_port;
 pkt->dst_port = dst->svm_port;
 memset(&pkt->proto, 0, sizeof(pkt->proto));
 memset(&pkt->_reserved2, 0, sizeof(pkt->_reserved2));

 switch (pkt->type) {
 case 139:
  pkt->u.size = 0;
  break;

 case 134:
 case 138:
  pkt->u.size = size;
  break;

 case 136:
 case 140:
  pkt->u.handle = handle;
  break;

 case 128:
 case 135:
 case 132:
  pkt->u.size = 0;
  break;

 case 131:
  pkt->u.mode = mode;
  break;

 case 130:
 case 129:
  memcpy(&pkt->u.wait, wait, sizeof(pkt->u.wait));
  break;

 case 133:
 case 137:
  pkt->u.size = size;
  pkt->proto = proto;
  break;
 }
}
