#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct udp_sock {size_t len; scalar_t__ corkflag; int /*<<< orphan*/  pending; } ;
struct sock {int /*<<< orphan*/  sk_socket; } ;
struct page {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip4; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ fl; } ;
struct inet_sock {TYPE_3__ cork; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int MSG_MORE ; 
 int MSG_SENDPAGE_NOTLAST ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*,int /*<<< orphan*/ *,struct page*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct page*,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int FUNC7 (struct sock*) ; 
 int FUNC8 (struct sock*,struct msghdr*,int /*<<< orphan*/ ) ; 
 struct udp_sock* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct sock *sk, struct page *page, int offset,
		 size_t size, int flags)
{
	struct inet_sock *inet = FUNC0(sk);
	struct udp_sock *up = FUNC9(sk);
	int ret;

	if (flags & MSG_SENDPAGE_NOTLAST)
		flags |= MSG_MORE;

	if (!up->pending) {
		struct msghdr msg = {	.msg_flags = flags|MSG_MORE };

		/* Call udp_sendmsg to specify destination address which
		 * sendpage interface can't pass.
		 * This will succeed only when the socket is connected.
		 */
		ret = FUNC8(sk, &msg, 0);
		if (ret < 0)
			return ret;
	}

	FUNC2(sk);

	if (FUNC10(!up->pending)) {
		FUNC4(sk);

		FUNC3("cork failed\n");
		return -EINVAL;
	}

	ret = FUNC1(sk, &inet->cork.fl.u.ip4,
			     page, offset, size, flags);
	if (ret == -EOPNOTSUPP) {
		FUNC4(sk);
		return FUNC5(sk->sk_socket, page, offset,
					size, flags);
	}
	if (ret < 0) {
		FUNC6(sk);
		goto out;
	}

	up->len += size;
	if (!(up->corkflag || (flags&MSG_MORE)))
		ret = FUNC7(sk);
	if (!ret)
		ret = size;
out:
	FUNC4(sk);
	return ret;
}