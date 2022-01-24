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
struct tipc_nl_compat_msg {struct sk_buff* rep; scalar_t__ rep_type; int /*<<< orphan*/  rep_size; scalar_t__ req_type; int /*<<< orphan*/  req; int /*<<< orphan*/  req_size; } ;
struct tipc_nl_compat_cmd_dump {int (* header ) (struct tipc_nl_compat_msg*) ;} ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct tipc_nl_compat_cmd_dump*,struct tipc_nl_compat_msg*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tipc_nl_compat_msg*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct tipc_nl_compat_cmd_dump *cmd,
				 struct tipc_nl_compat_msg *msg)
{
	int err;
	struct sk_buff *arg;

	if (msg->req_type && (!msg->req_size ||
			      !FUNC0(msg->req, msg->req_type)))
		return -EINVAL;

	msg->rep = FUNC5(msg->rep_size);
	if (!msg->rep)
		return -ENOMEM;

	if (msg->rep_type)
		FUNC6(msg->rep, msg->rep_type);

	if (cmd->header) {
		err = (*cmd->header)(msg);
		if (err) {
			FUNC2(msg->rep);
			msg->rep = NULL;
			return err;
		}
	}

	arg = FUNC3(0, GFP_KERNEL);
	if (!arg) {
		FUNC2(msg->rep);
		msg->rep = NULL;
		return -ENOMEM;
	}

	err = FUNC1(cmd, msg, arg);
	if (err) {
		FUNC2(msg->rep);
		msg->rep = NULL;
	}
	FUNC2(arg);

	return err;
}