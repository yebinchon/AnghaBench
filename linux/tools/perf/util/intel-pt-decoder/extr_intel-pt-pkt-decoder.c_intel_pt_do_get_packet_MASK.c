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
typedef  enum intel_pt_pkt_ctx { ____Placeholder_intel_pt_pkt_ctx } intel_pt_pkt_ctx ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int INTEL_PT_BAD_PACKET ; 
#define  INTEL_PT_BLK_4_CTX 130 
#define  INTEL_PT_BLK_8_CTX 129 
 int /*<<< orphan*/  INTEL_PT_FUP ; 
 int INTEL_PT_NEED_MORE_BYTES ; 
#define  INTEL_PT_NO_CTX 128 
 int /*<<< orphan*/  INTEL_PT_TIP ; 
 int /*<<< orphan*/  INTEL_PT_TIP_PGD ; 
 int /*<<< orphan*/  INTEL_PT_TIP_PGE ; 
 int FUNC1 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC2 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC3 (unsigned int,unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC4 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC6 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC7 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int FUNC8 (struct intel_pt_pkt*) ; 
 int FUNC9 (unsigned int,struct intel_pt_pkt*) ; 
 int FUNC10 (unsigned char const*,size_t,struct intel_pt_pkt*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_pt_pkt*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(const unsigned char *buf, size_t len,
				  struct intel_pt_pkt *packet,
				  enum intel_pt_pkt_ctx ctx)
{
	unsigned int byte;

	FUNC11(packet, 0, sizeof(struct intel_pt_pkt));

	if (!len)
		return INTEL_PT_NEED_MORE_BYTES;

	byte = buf[0];

	switch (ctx) {
	case INTEL_PT_NO_CTX:
		break;
	case INTEL_PT_BLK_4_CTX:
		if ((byte & 0x7) == 4)
			return FUNC1(buf, len, packet);
		break;
	case INTEL_PT_BLK_8_CTX:
		if ((byte & 0x7) == 4)
			return FUNC2(buf, len, packet);
		break;
	default:
		break;
	};

	if (!(byte & FUNC0(0))) {
		if (byte == 0)
			return FUNC8(packet);
		if (byte == 2)
			return FUNC4(buf, len, packet);
		return FUNC9(byte, packet);
	}

	if ((byte & 2))
		return FUNC3(byte, buf, len, packet);

	switch (byte & 0x1f) {
	case 0x0D:
		return FUNC5(INTEL_PT_TIP, byte, buf, len, packet);
	case 0x11:
		return FUNC5(INTEL_PT_TIP_PGE, byte, buf, len,
				       packet);
	case 0x01:
		return FUNC5(INTEL_PT_TIP_PGD, byte, buf, len,
				       packet);
	case 0x1D:
		return FUNC5(INTEL_PT_FUP, byte, buf, len, packet);
	case 0x19:
		switch (byte) {
		case 0x99:
			return FUNC6(buf, len, packet);
		case 0x19:
			return FUNC10(buf, len, packet);
		case 0x59:
			return FUNC7(buf, len, packet);
		default:
			return INTEL_PT_BAD_PACKET;
		}
	default:
		return INTEL_PT_BAD_PACKET;
	}
}