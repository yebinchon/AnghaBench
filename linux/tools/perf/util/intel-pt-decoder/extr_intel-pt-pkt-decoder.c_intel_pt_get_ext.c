
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_pkt {int dummy; } ;


 int INTEL_PT_BAD_PACKET ;
 int INTEL_PT_NEED_MORE_BYTES ;
 int intel_pt_get_3byte (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_bbp (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_bep (size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_bep_ip (size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_cbr (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_exstop (struct intel_pt_pkt*) ;
 int intel_pt_get_exstop_ip (struct intel_pt_pkt*) ;
 int intel_pt_get_long_tnt (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_mwait (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_ovf (struct intel_pt_pkt*) ;
 int intel_pt_get_pip (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_psb (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_psbend (struct intel_pt_pkt*) ;
 int intel_pt_get_ptwrite (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_pwre (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_pwrx (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_tma (unsigned char const*,size_t,struct intel_pt_pkt*) ;
 int intel_pt_get_tracestop (struct intel_pt_pkt*) ;
 int intel_pt_get_vmcs (unsigned char const*,size_t,struct intel_pt_pkt*) ;

__attribute__((used)) static int intel_pt_get_ext(const unsigned char *buf, size_t len,
       struct intel_pt_pkt *packet)
{
 if (len < 2)
  return INTEL_PT_NEED_MORE_BYTES;

 if ((buf[1] & 0x1f) == 0x12)
  return intel_pt_get_ptwrite(buf, len, packet);

 switch (buf[1]) {
 case 0xa3:
  return intel_pt_get_long_tnt(buf, len, packet);
 case 0x43:
  return intel_pt_get_pip(buf, len, packet);
 case 0x83:
  return intel_pt_get_tracestop(packet);
 case 0x03:
  return intel_pt_get_cbr(buf, len, packet);
 case 0xc8:
  return intel_pt_get_vmcs(buf, len, packet);
 case 0xf3:
  return intel_pt_get_ovf(packet);
 case 0x82:
  return intel_pt_get_psb(buf, len, packet);
 case 0x23:
  return intel_pt_get_psbend(packet);
 case 0x73:
  return intel_pt_get_tma(buf, len, packet);
 case 0xC3:
  return intel_pt_get_3byte(buf, len, packet);
 case 0x62:
  return intel_pt_get_exstop(packet);
 case 0xE2:
  return intel_pt_get_exstop_ip(packet);
 case 0xC2:
  return intel_pt_get_mwait(buf, len, packet);
 case 0x22:
  return intel_pt_get_pwre(buf, len, packet);
 case 0xA2:
  return intel_pt_get_pwrx(buf, len, packet);
 case 0x63:
  return intel_pt_get_bbp(buf, len, packet);
 case 0x33:
  return intel_pt_get_bep(len, packet);
 case 0xb3:
  return intel_pt_get_bep_ip(len, packet);
 default:
  return INTEL_PT_BAD_PACKET;
 }
}
