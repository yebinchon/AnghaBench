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
struct TYPE_2__ {int u32; } ;
struct epoll_event {TYPE_1__ data; } ;
struct cmd {int reuseport_index; int pass_on_failure; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  rcv_cmd ;
typedef  enum result { ____Placeholder_result } result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,size_t,int,int,...) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int PASS ; 
 int PASS_ERR_SK_SELECT_REUSEPORT ; 
 int SOCK_STREAM ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct cmd*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  epfd ; 
 int FUNC5 (int /*<<< orphan*/ ,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (int,struct cmd*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,struct cmd*,int,int) ; 
 int* sk_fds ; 

__attribute__((used)) static void FUNC8(int type, sa_family_t family, struct cmd *cmd,
		    enum result expected)
{
	int nev, srv_fd, cli_fd;
	struct epoll_event ev;
	struct cmd rcv_cmd;
	ssize_t nread;

	cli_fd = FUNC7(type, family, cmd, cmd ? sizeof(*cmd) : 0,
			   expected);
	nev = FUNC5(epfd, &ev, 1, expected >= PASS ? 5 : 0);
	FUNC0((nev <= 0 && expected >= PASS) ||
	      (nev > 0 && expected < PASS),
	      "nev <> expected",
	      "nev:%d expected:%d type:%d family:%d data:(%d, %d)\n",
	      nev, expected, type, family,
	      cmd ? cmd->reuseport_index : -1,
	      cmd ? cmd->pass_on_failure : -1);
	FUNC3();
	FUNC2(type, family, cmd, cli_fd);

	if (expected < PASS)
		return;

	FUNC0(expected != PASS_ERR_SK_SELECT_REUSEPORT &&
	      cmd->reuseport_index != ev.data.u32,
	      "check cmd->reuseport_index",
	      "cmd:(%u, %u) ev.data.u32:%u\n",
	      cmd->pass_on_failure, cmd->reuseport_index, ev.data.u32);

	srv_fd = sk_fds[ev.data.u32];
	if (type == SOCK_STREAM) {
		int new_fd = FUNC1(srv_fd, NULL, 0);

		FUNC0(new_fd == -1, "accept(srv_fd)",
		      "ev.data.u32:%u new_fd:%d errno:%d\n",
		      ev.data.u32, new_fd, errno);

		nread = FUNC6(new_fd, &rcv_cmd, sizeof(rcv_cmd), MSG_DONTWAIT);
		FUNC0(nread != sizeof(rcv_cmd),
		      "recv(new_fd)",
		      "ev.data.u32:%u nread:%zd sizeof(rcv_cmd):%zu errno:%d\n",
		      ev.data.u32, nread, sizeof(rcv_cmd), errno);

		FUNC4(new_fd);
	} else {
		nread = FUNC6(srv_fd, &rcv_cmd, sizeof(rcv_cmd), MSG_DONTWAIT);
		FUNC0(nread != sizeof(rcv_cmd),
		      "recv(sk_fds)",
		      "ev.data.u32:%u nread:%zd sizeof(rcv_cmd):%zu errno:%d\n",
		      ev.data.u32, nread, sizeof(rcv_cmd), errno);
	}

	FUNC4(cli_fd);
}