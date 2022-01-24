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
struct tipc_nl_compat_msg {int /*<<< orphan*/  rep; scalar_t__ req_type; int /*<<< orphan*/  req; int /*<<< orphan*/  req_size; } ;
struct tipc_nl_compat_cmd_doit {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct tipc_nl_compat_cmd_doit*,struct tipc_nl_compat_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tipc_nl_compat_cmd_doit *cmd,
			       struct tipc_nl_compat_msg *msg)
{
	int err;

	if (msg->req_type && (!msg->req_size ||
			      !FUNC0(msg->req, msg->req_type)))
		return -EINVAL;

	err = FUNC1(cmd, msg);
	if (err)
		return err;

	/* The legacy API considered an empty message a success message */
	msg->rep = FUNC2(0);
	if (!msg->rep)
		return -ENOMEM;

	return 0;
}