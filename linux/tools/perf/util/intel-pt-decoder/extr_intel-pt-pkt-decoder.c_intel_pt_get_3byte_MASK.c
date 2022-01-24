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

__attribute__((used)) static int FUNC1(const unsigned char *buf, size_t len,
			      struct intel_pt_pkt *packet)
{
	if (len < 3)
		return INTEL_PT_NEED_MORE_BYTES;

	switch (buf[2]) {
	case 0x88: /* MNT */
		return FUNC0(buf, len, packet);
	default:
		return INTEL_PT_BAD_PACKET;
	}
}