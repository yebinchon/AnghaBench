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
struct arm_spe_pkt {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARM_SPE_PAD ; 
 int FUNC0 (unsigned char const*,size_t,struct arm_spe_pkt*) ; 

int FUNC1(const unsigned char *buf, size_t len,
		       struct arm_spe_pkt *packet)
{
	int ret;

	ret = FUNC0(buf, len, packet);
	/* put multiple consecutive PADs on the same line, up to
	 * the fixed-width output format of 16 bytes per line.
	 */
	if (ret > 0 && packet->type == ARM_SPE_PAD) {
		while (ret < 16 && len > (size_t)ret && !buf[ret])
			ret += 1;
	}
	return ret;
}