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
typedef  int uint64_t ;
struct intel_pt_pkt {int count; int payload; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  INTEL_PT_TNT ; 

__attribute__((used)) static int FUNC1(unsigned int byte,
				  struct intel_pt_pkt *packet)
{
	int count;

	for (count = 6; count; count--) {
		if (byte & FUNC0(7))
			break;
		byte <<= 1;
	}

	packet->type = INTEL_PT_TNT;
	packet->count = count;
	packet->payload = (uint64_t)byte << 57;

	return 1;
}