
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {int dummy; } ;
typedef enum intel_pt_pkt_ctx { ____Placeholder_intel_pt_pkt_ctx } intel_pt_pkt_ctx ;


 unsigned int BIT (int ) ;
 int INTEL_PT_BAD_PACKET ;


 int INTEL_PT_FUP ;
 int INTEL_PT_NEED_MORE_BYTES ;

 int INTEL_PT_TIP ;
 int INTEL_PT_TIP_PGD ;
 int INTEL_PT_TIP_PGE ;
 int intel_pt_get_bip_4 (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_bip_8 (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_cyc (unsigned int,unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_ext (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_ip (int ,unsigned int,unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_mode (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_mtc (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_pad (struct intel_pt_pkt*) ;
 int intel_pt_get_short_tnt (unsigned int,struct intel_pt_pkt*) ;
 int intel_pt_get_tsc (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int memset (struct intel_pt_pkt*,int ,int) ;

__attribute__((used)) static int intel_pt_do_get_packet(const unsigned char *buf, size_t len,
      struct intel_pt_pkt *packet,
      enum intel_pt_pkt_ctx ctx)
{
 unsigned int byte;

 memset(packet, 0, sizeof(struct intel_pt_pkt));

 if (!len)
  return INTEL_PT_NEED_MORE_BYTES;

 byte = buf[0];

 switch (ctx) {
 case 128:
  break;
 case 130:
  if ((byte & 0x7) == 4)
   return intel_pt_get_bip_4(buf, len, packet);
  break;
 case 129:
  if ((byte & 0x7) == 4)
   return intel_pt_get_bip_8(buf, len, packet);
  break;
 default:
  break;
 };

 if (!(byte & BIT(0))) {
  if (byte == 0)
   return intel_pt_get_pad(packet);
  if (byte == 2)
   return intel_pt_get_ext(buf, len, packet);
  return intel_pt_get_short_tnt(byte, packet);
 }

 if ((byte & 2))
  return intel_pt_get_cyc(byte, buf, len, packet);

 switch (byte & 0x1f) {
 case 0x0D:
  return intel_pt_get_ip(INTEL_PT_TIP, byte, buf, len, packet);
 case 0x11:
  return intel_pt_get_ip(INTEL_PT_TIP_PGE, byte, buf, len,
           packet);
 case 0x01:
  return intel_pt_get_ip(INTEL_PT_TIP_PGD, byte, buf, len,
           packet);
 case 0x1D:
  return intel_pt_get_ip(INTEL_PT_FUP, byte, buf, len, packet);
 case 0x19:
  switch (byte) {
  case 0x99:
   return intel_pt_get_mode(buf, len, packet);
  case 0x19:
   return intel_pt_get_tsc(buf, len, packet);
  case 0x59:
   return intel_pt_get_mtc(buf, len, packet);
  default:
   return INTEL_PT_BAD_PACKET;
  }
 default:
  return INTEL_PT_BAD_PACKET;
 }
}
