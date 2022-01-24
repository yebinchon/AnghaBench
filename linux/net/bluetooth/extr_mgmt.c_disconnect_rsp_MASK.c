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
struct sock {int dummy; } ;
struct mgmt_pending_cmd {struct sock* sk; int /*<<< orphan*/  (* cmd_complete ) (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mgmt_pending_cmd *cmd, void *data)
{
	struct sock **sk = data;

	cmd->cmd_complete(cmd, 0);

	*sk = cmd->sk;
	FUNC1(*sk);

	FUNC0(cmd);
}