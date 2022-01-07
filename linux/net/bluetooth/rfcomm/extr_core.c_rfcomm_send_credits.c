
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_hdr {int len; int ctrl; int addr; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ,int ) ;
 int RFCOMM_UIH ;
 int __ctrl (int ,int) ;
 int __fcs (int *) ;
 int __len8 (int ) ;
 int rfcomm_send_frame (struct rfcomm_session*,int *,int) ;

__attribute__((used)) static int rfcomm_send_credits(struct rfcomm_session *s, u8 addr, u8 credits)
{
 struct rfcomm_hdr *hdr;
 u8 buf[16], *ptr = buf;

 BT_DBG("%p addr %d credits %d", s, addr, credits);

 hdr = (void *) ptr; ptr += sizeof(*hdr);
 hdr->addr = addr;
 hdr->ctrl = __ctrl(RFCOMM_UIH, 1);
 hdr->len = __len8(0);

 *ptr = credits; ptr++;

 *ptr = __fcs(buf); ptr++;

 return rfcomm_send_frame(s, buf, ptr - buf);
}
