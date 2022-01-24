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
struct TYPE_2__ {scalar_t__ len; int copied; size_t offset; int /*<<< orphan*/  calldir; int /*<<< orphan*/  fraghdr; } ;
struct sock_xprt {TYPE_1__ recv; int /*<<< orphan*/  sock; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  member_0; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ESHUTDOWN ; 
 int MSG_TRUNC ; 
#define  RPC_CALL 129 
 int RPC_FRAGMENT_SIZE_MASK ; 
#define  RPC_REPLY 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock_xprt*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,struct msghdr*,int,int) ; 
 size_t FUNC4 (struct sock_xprt*,struct msghdr*,int) ; 
 size_t FUNC5 (struct sock_xprt*,struct msghdr*,int,size_t,size_t) ; 
 size_t FUNC6 (int) ; 
 size_t FUNC7 (struct sock_xprt*,struct msghdr*,int) ; 
 scalar_t__ FUNC8 (struct sock_xprt*) ; 

__attribute__((used)) static ssize_t
FUNC9(struct sock_xprt *transport, int flags)
{
	struct msghdr msg = { 0 };
	size_t want, read = 0;
	ssize_t ret = 0;

	if (transport->recv.len == 0) {
		want = FUNC6(transport->recv.copied != 0);
		ret = FUNC5(transport, &msg, flags, want,
				transport->recv.offset);
		if (ret <= 0)
			goto out_err;
		transport->recv.offset = ret;
		if (transport->recv.offset != want)
			return transport->recv.offset;
		transport->recv.len = FUNC0(transport->recv.fraghdr) &
			RPC_FRAGMENT_SIZE_MASK;
		transport->recv.offset -= sizeof(transport->recv.fraghdr);
		read = ret;
	}

	switch (FUNC0(transport->recv.calldir)) {
	default:
		msg.msg_flags |= MSG_TRUNC;
		break;
	case RPC_CALL:
		ret = FUNC4(transport, &msg, flags);
		break;
	case RPC_REPLY:
		ret = FUNC7(transport, &msg, flags);
	}
	if (msg.msg_flags & MSG_TRUNC) {
		transport->recv.calldir = FUNC1(-1);
		transport->recv.copied = -1;
	}
	if (ret < 0)
		goto out_err;
	read += ret;
	if (transport->recv.offset < transport->recv.len) {
		if (!(msg.msg_flags & MSG_TRUNC))
			return read;
		msg.msg_flags = 0;
		ret = FUNC3(transport->sock, &msg, flags,
				transport->recv.len - transport->recv.offset);
		if (ret <= 0)
			goto out_err;
		transport->recv.offset += ret;
		read += ret;
		if (transport->recv.offset != transport->recv.len)
			return read;
	}
	if (FUNC8(transport)) {
		FUNC2(transport);
		transport->recv.copied = 0;
	}
	transport->recv.offset = 0;
	transport->recv.len = 0;
	return read;
out_err:
	return ret != 0 ? ret : -ESHUTDOWN;
}