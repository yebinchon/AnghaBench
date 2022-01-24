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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct intel_pt_pkt {unsigned char count; int /*<<< orphan*/  payload; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 unsigned char const FUNC0 (int) ; 
 int INTEL_PT_BAD_PACKET ; 
 int INTEL_PT_NEED_MORE_BYTES ; 
 int /*<<< orphan*/  INTEL_PT_PTWRITE ; 
 int /*<<< orphan*/  INTEL_PT_PTWRITE_IP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const unsigned char *buf, size_t len,
				struct intel_pt_pkt *packet)
{
	packet->count = (buf[1] >> 5) & 0x3;
	packet->type = buf[1] & FUNC0(7) ? INTEL_PT_PTWRITE_IP :
					 INTEL_PT_PTWRITE;

	switch (packet->count) {
	case 0:
		if (len < 6)
			return INTEL_PT_NEED_MORE_BYTES;
		packet->payload = FUNC1(*(uint32_t *)(buf + 2));
		return 6;
	case 1:
		if (len < 10)
			return INTEL_PT_NEED_MORE_BYTES;
		packet->payload = FUNC2(*(uint64_t *)(buf + 2));
		return 10;
	default:
		return INTEL_PT_BAD_PACKET;
	}
}