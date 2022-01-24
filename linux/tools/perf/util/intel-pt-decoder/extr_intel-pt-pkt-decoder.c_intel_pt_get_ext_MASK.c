#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_pt_pkt {int dummy; } ;

/* Variables and functions */
 int INTEL_PT_BAD_PACKET ; 
 int INTEL_PT_NEED_MORE_BYTES ; 
 int FUNC0 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC1 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC2 (size_t,struct intel_pt_pkt*) ; 
 int FUNC3 (size_t,struct intel_pt_pkt*) ; 
 int FUNC4 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC5 (struct intel_pt_pkt*) ; 
 int FUNC6 (struct intel_pt_pkt*) ; 
 int FUNC7 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC8 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC9 (struct intel_pt_pkt*) ; 
 int FUNC10 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC11 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC12 (struct intel_pt_pkt*) ; 
 int FUNC13 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC14 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC15 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC16 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC17 (struct intel_pt_pkt*) ; 
 int FUNC18 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 

__attribute__((used)) static int FUNC19(const unsigned char *buf, size_t len,
			    struct intel_pt_pkt *packet)
{
	if (len < 2)
		return INTEL_PT_NEED_MORE_BYTES;

	if ((buf[1] & 0x1f) == 0x12)
		return FUNC13(buf, len, packet);

	switch (buf[1]) {
	case 0xa3: /* Long TNT */
		return FUNC7(buf, len, packet);
	case 0x43: /* PIP */
		return FUNC10(buf, len, packet);
	case 0x83: /* TraceStop */
		return FUNC17(packet);
	case 0x03: /* CBR */
		return FUNC4(buf, len, packet);
	case 0xc8: /* VMCS */
		return FUNC18(buf, len, packet);
	case 0xf3: /* OVF */
		return FUNC9(packet);
	case 0x82: /* PSB */
		return FUNC11(buf, len, packet);
	case 0x23: /* PSBEND */
		return FUNC12(packet);
	case 0x73: /* TMA */
		return FUNC16(buf, len, packet);
	case 0xC3: /* 3-byte header */
		return FUNC0(buf, len, packet);
	case 0x62: /* EXSTOP no IP */
		return FUNC5(packet);
	case 0xE2: /* EXSTOP with IP */
		return FUNC6(packet);
	case 0xC2: /* MWAIT */
		return FUNC8(buf, len, packet);
	case 0x22: /* PWRE */
		return FUNC14(buf, len, packet);
	case 0xA2: /* PWRX */
		return FUNC15(buf, len, packet);
	case 0x63: /* BBP */
		return FUNC1(buf, len, packet);
	case 0x33: /* BEP no IP */
		return FUNC2(len, packet);
	case 0xb3: /* BEP with IP */
		return FUNC3(len, packet);
	default:
		return INTEL_PT_BAD_PACKET;
	}
}