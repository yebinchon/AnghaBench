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
struct test_data {int dummy; } ;
struct intel_pt_pkt {int dummy; } ;
typedef  enum intel_pt_pkt_ctx { ____Placeholder_intel_pt_pkt_ctx } intel_pt_pkt_ctx ;

/* Variables and functions */
 int TEST_FAIL ; 
 int TEST_OK ; 
 int /*<<< orphan*/  FUNC0 (struct test_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_pt_pkt*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct test_data *d, struct intel_pt_pkt *packet,
			      enum intel_pt_pkt_ctx ctx)
{
	enum intel_pt_pkt_ctx old_ctx = ctx;

	FUNC1(packet, &ctx);

	if (ctx != old_ctx) {
		FUNC0(d);
		FUNC2("Packet context changed!\n");
		return TEST_FAIL;
	}

	return TEST_OK;
}