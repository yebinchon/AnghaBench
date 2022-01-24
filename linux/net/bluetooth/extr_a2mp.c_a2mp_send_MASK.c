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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct msghdr {int /*<<< orphan*/  msg_iter; } ;
struct l2cap_chan {int dummy; } ;
struct kvec {scalar_t__ iov_len; struct a2mp_cmd* iov_base; } ;
struct amp_mgr {struct l2cap_chan* a2mp_chan; } ;
struct a2mp_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE ; 
 struct a2mp_cmd* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct kvec*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct a2mp_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct msghdr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct amp_mgr *mgr, u8 code, u8 ident, u16 len, void *data)
{
	struct l2cap_chan *chan = mgr->a2mp_chan;
	struct a2mp_cmd *cmd;
	u16 total_len = len + sizeof(*cmd);
	struct kvec iv;
	struct msghdr msg;

	cmd = FUNC0(code, ident, len, data);
	if (!cmd)
		return;

	iv.iov_base = cmd;
	iv.iov_len = total_len;

	FUNC4(&msg, 0, sizeof(msg));

	FUNC1(&msg.msg_iter, WRITE, &iv, 1, total_len);

	FUNC3(chan, &msg, total_len);

	FUNC2(cmd);
}