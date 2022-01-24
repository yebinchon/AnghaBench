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
typedef  char* u8 ;
struct intel_pt_pkt {int dummy; } ;

/* Variables and functions */
 int INTEL_PT_PKT_DESC_MAX ; 
 int INTEL_PT_PKT_MAX_SZ ; 
 int TEST_FAIL ; 
 int TEST_OK ; 
 int FUNC0 (struct intel_pt_pkt*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(struct intel_pt_pkt *packet, u8 *bytes, int len)
{
	char desc[INTEL_PT_PKT_DESC_MAX];
	int ret, i;

	for (i = 0; i < len; i++)
		FUNC1(" %02x", bytes[i]);
	for (; i < INTEL_PT_PKT_MAX_SZ; i++)
		FUNC1("   ");
	FUNC1("   ");
	ret = FUNC0(packet, desc, INTEL_PT_PKT_DESC_MAX);
	if (ret < 0) {
		FUNC1("intel_pt_pkt_desc failed!\n");
		return TEST_FAIL;
	}
	FUNC1("%s\n", desc);

	return TEST_OK;
}