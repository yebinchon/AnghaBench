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
struct regulatory_request {int intersect; int processed; } ;
typedef  enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;

/* Variables and functions */
 int REG_REQ_IGNORE ; 
 int REG_REQ_OK ; 
 scalar_t__ FUNC0 (struct regulatory_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct regulatory_request*) ; 

__attribute__((used)) static enum reg_request_treatment
FUNC2(struct regulatory_request *core_request)
{
	if (FUNC0(core_request)) {
		core_request->intersect = false;
		core_request->processed = false;
		FUNC1(core_request);
		return REG_REQ_OK;
	}

	return REG_REQ_IGNORE;
}