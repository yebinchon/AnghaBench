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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct arm_spe_pkt {int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int ARM_SPE_BAD_PACKET ; 
 int ARM_SPE_NEED_MORE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (unsigned char const) ; 

__attribute__((used)) static int FUNC4(const unsigned char *buf, size_t len,
			       struct arm_spe_pkt *packet)
{
	size_t payload_len = FUNC3(buf[0]);

	if (len < 1 + payload_len)
		return ARM_SPE_NEED_MORE_BYTES;

	buf++;

	switch (payload_len) {
	case 1: packet->payload = *(uint8_t *)buf; break;
	case 2: packet->payload = FUNC0(*(uint16_t *)buf); break;
	case 4: packet->payload = FUNC1(*(uint32_t *)buf); break;
	case 8: packet->payload = FUNC2(*(uint64_t *)buf); break;
	default: return ARM_SPE_BAD_PACKET;
	}

	return 1 + payload_len;
}