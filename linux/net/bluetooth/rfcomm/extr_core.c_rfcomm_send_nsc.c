
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct rfcomm_session {int initiator; } ;
struct rfcomm_mcc {void* len; void* type; } ;
struct rfcomm_hdr {void* len; int ctrl; int addr; } ;


 int BT_DBG (char*,struct rfcomm_session*,int,void*) ;
 void* RFCOMM_NSC ;
 int RFCOMM_UIH ;
 int __addr (int ,int ) ;
 int __ctrl (int ,int ) ;
 void* __fcs (void**) ;
 void* __len8 (int) ;
 void* __mcc_type (int,void*) ;
 int rfcomm_send_frame (struct rfcomm_session*,void**,int) ;

__attribute__((used)) static int rfcomm_send_nsc(struct rfcomm_session *s, int cr, u8 type)
{
 struct rfcomm_hdr *hdr;
 struct rfcomm_mcc *mcc;
 u8 buf[16], *ptr = buf;

 BT_DBG("%p cr %d type %d", s, cr, type);

 hdr = (void *) ptr; ptr += sizeof(*hdr);
 hdr->addr = __addr(s->initiator, 0);
 hdr->ctrl = __ctrl(RFCOMM_UIH, 0);
 hdr->len = __len8(sizeof(*mcc) + 1);

 mcc = (void *) ptr; ptr += sizeof(*mcc);
 mcc->type = __mcc_type(0, RFCOMM_NSC);
 mcc->len = __len8(1);


 *ptr = __mcc_type(cr, type); ptr++;

 *ptr = __fcs(buf); ptr++;

 return rfcomm_send_frame(s, buf, ptr - buf);
}
