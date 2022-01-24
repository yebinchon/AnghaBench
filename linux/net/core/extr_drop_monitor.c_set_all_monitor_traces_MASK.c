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
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
#define  TRACE_OFF 129 
#define  TRACE_ON 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct netlink_ext_ack*) ; 
 int trace_state ; 

__attribute__((used)) static int FUNC3(int state, struct netlink_ext_ack *extack)
{
	int rc = 0;

	if (state == trace_state) {
		FUNC0(extack, "Trace state already set to requested state");
		return -EAGAIN;
	}

	switch (state) {
	case TRACE_ON:
		rc = FUNC2(extack);
		break;
	case TRACE_OFF:
		FUNC1();
		break;
	default:
		rc = 1;
		break;
	}

	if (!rc)
		trace_state = state;
	else
		rc = -EINPROGRESS;

	return rc;
}