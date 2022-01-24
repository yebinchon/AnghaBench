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
struct bpf_object {int dummy; } ;
typedef  int socklen_t ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  IP_TOS ; 
 int /*<<< orphan*/  SOL_IP ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct bpf_object*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_object*,int,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC5(struct bpf_object *obj, int cg_parent,
			       int cg_child, int sock_fd)
{
	socklen_t optlen;
	__u8 buf;
	int err;

	/* Set IP_TOS to the expected value (0x80). */

	buf = 0x80;
	err = FUNC4(sock_fd, SOL_IP, IP_TOS, &buf, 1);
	if (err < 0) {
		FUNC1("Failed to call setsockopt(IP_TOS)");
		goto detach;
	}

	buf = 0x00;
	optlen = 1;
	err = FUNC0(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
	if (err) {
		FUNC1("Failed to call getsockopt(IP_TOS)");
		goto detach;
	}

	if (buf != 0x80) {
		FUNC1("Unexpected getsockopt 0x%x != 0x80 without BPF", buf);
		err = -1;
		goto detach;
	}

	/* Attach child program and make sure it adds 0x10. */

	err = FUNC2(obj, cg_child, "cgroup/setsockopt");
	if (err)
		goto detach;

	buf = 0x80;
	err = FUNC4(sock_fd, SOL_IP, IP_TOS, &buf, 1);
	if (err < 0) {
		FUNC1("Failed to call setsockopt(IP_TOS)");
		goto detach;
	}

	buf = 0x00;
	optlen = 1;
	err = FUNC0(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
	if (err) {
		FUNC1("Failed to call getsockopt(IP_TOS)");
		goto detach;
	}

	if (buf != 0x80 + 0x10) {
		FUNC1("Unexpected getsockopt 0x%x != 0x80 + 0x10", buf);
		err = -1;
		goto detach;
	}

	/* Attach parent program and make sure it adds another 0x10. */

	err = FUNC2(obj, cg_parent, "cgroup/setsockopt");
	if (err)
		goto detach;

	buf = 0x80;
	err = FUNC4(sock_fd, SOL_IP, IP_TOS, &buf, 1);
	if (err < 0) {
		FUNC1("Failed to call setsockopt(IP_TOS)");
		goto detach;
	}

	buf = 0x00;
	optlen = 1;
	err = FUNC0(sock_fd, SOL_IP, IP_TOS, &buf, &optlen);
	if (err) {
		FUNC1("Failed to call getsockopt(IP_TOS)");
		goto detach;
	}

	if (buf != 0x80 + 2 * 0x10) {
		FUNC1("Unexpected getsockopt 0x%x != 0x80 + 2 * 0x10", buf);
		err = -1;
		goto detach;
	}

detach:
	FUNC3(obj, cg_child, "cgroup/setsockopt");
	FUNC3(obj, cg_parent, "cgroup/setsockopt");

	return err;
}