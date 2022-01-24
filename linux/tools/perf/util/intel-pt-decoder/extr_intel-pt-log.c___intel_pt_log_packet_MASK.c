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
struct intel_pt_pkt {int dummy; } ;

/* Variables and functions */
 int INTEL_PT_PKT_DESC_MAX ; 
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct intel_pt_pkt const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(const struct intel_pt_pkt *packet, int pkt_len,
			   uint64_t pos, const unsigned char *buf)
{
	char desc[INTEL_PT_PKT_DESC_MAX];

	if (FUNC1())
		return;

	FUNC3(buf, pkt_len, pos, 0);
	FUNC2(packet, desc, INTEL_PT_PKT_DESC_MAX);
	FUNC0(f, "%s\n", desc);
}