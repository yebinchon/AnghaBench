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
typedef  void* u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  list; struct sock* sk; void* param_len; int /*<<< orphan*/  param; int /*<<< orphan*/  index; void* opcode; } ;
struct hci_dev {int /*<<< orphan*/  mgmt_pending; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

struct mgmt_pending_cmd *FUNC5(struct sock *sk, u16 opcode,
					  struct hci_dev *hdev,
					  void *data, u16 len)
{
	struct mgmt_pending_cmd *cmd;

	cmd = FUNC2(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return NULL;

	cmd->opcode = opcode;
	cmd->index = hdev->id;

	cmd->param = FUNC1(data, len, GFP_KERNEL);
	if (!cmd->param) {
		FUNC0(cmd);
		return NULL;
	}

	cmd->param_len = len;

	cmd->sk = sk;
	FUNC4(sk);

	FUNC3(&cmd->list, &hdev->mgmt_pending);

	return cmd;
}