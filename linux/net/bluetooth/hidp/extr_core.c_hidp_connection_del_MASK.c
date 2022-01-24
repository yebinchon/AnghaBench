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
typedef  int u32 ;
struct hidp_session {int /*<<< orphan*/  user; int /*<<< orphan*/  conn; } ;
struct hidp_conndel_req {int flags; int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int HIDP_CTRL_VIRTUAL_CABLE_UNPLUG ; 
 int HIDP_TRANS_HID_CONTROL ; 
 int /*<<< orphan*/  HIDP_VIRTUAL_CABLE_UNPLUG ; 
 int /*<<< orphan*/  FUNC1 (struct hidp_session*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hidp_session* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct hidp_conndel_req *req)
{
	u32 valid_flags = FUNC0(HIDP_VIRTUAL_CABLE_UNPLUG);
	struct hidp_session *session;

	if (req->flags & ~valid_flags)
		return -EINVAL;

	session = FUNC2(&req->bdaddr);
	if (!session)
		return -ENOENT;

	if (req->flags & FUNC0(HIDP_VIRTUAL_CABLE_UNPLUG))
		FUNC1(session,
				       HIDP_TRANS_HID_CONTROL |
				         HIDP_CTRL_VIRTUAL_CABLE_UNPLUG,
				       NULL, 0);
	else
		FUNC4(session->conn, &session->user);

	FUNC3(session);

	return 0;
}