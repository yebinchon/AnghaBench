#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hidp_session {scalar_t__ input; TYPE_1__* hid; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct hidp_session *session)
{
	int ret;

	/* Both HID and input systems drop a ref-count when unregistering the
	 * device but they don't take a ref-count when registering them. Work
	 * around this by explicitly taking a refcount during registration
	 * which is dropped automatically by unregistering the devices. */

	if (session->hid) {
		ret = FUNC1(session->hid);
		if (ret)
			return ret;
		FUNC0(&session->hid->dev);
	} else if (session->input) {
		ret = FUNC3(session->input);
		if (ret)
			return ret;
		FUNC2(session->input);
	}

	return 0;
}