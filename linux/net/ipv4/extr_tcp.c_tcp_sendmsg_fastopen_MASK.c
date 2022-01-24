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
struct ubuf_info {int dummy; } ;
struct tcp_sock {TYPE_3__* fastopen_req; } ;
struct tcp_fastopen_request {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {int /*<<< orphan*/  sk_socket; scalar_t__ sk_route_caps; int /*<<< orphan*/  sk_allocation; } ;
struct msghdr {int msg_namelen; int msg_flags; struct sockaddr* msg_name; } ;
struct inet_sock {scalar_t__ defer_connect; scalar_t__ inet_dport; } ;
struct TYPE_6__ {size_t size; int copied; struct ubuf_info* uarg; struct msghdr* data; } ;
struct TYPE_4__ {int sysctl_tcp_fastopen; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EALREADY ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int MSG_DONTWAIT ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int TFO_CLIENT_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int,int,int) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct msghdr *msg,
				int *copied, size_t size,
				struct ubuf_info *uarg)
{
	struct tcp_sock *tp = FUNC7(sk);
	struct inet_sock *inet = FUNC1(sk);
	struct sockaddr *uaddr = msg->msg_name;
	int err, flags;

	if (!(FUNC3(sk)->ipv4.sysctl_tcp_fastopen & TFO_CLIENT_ENABLE) ||
	    (uaddr && msg->msg_namelen >= sizeof(uaddr->sa_family) &&
	     uaddr->sa_family == AF_UNSPEC))
		return -EOPNOTSUPP;
	if (tp->fastopen_req)
		return -EALREADY; /* Another Fast Open is in progress */

	tp->fastopen_req = FUNC2(sizeof(struct tcp_fastopen_request),
				   sk->sk_allocation);
	if (FUNC8(!tp->fastopen_req))
		return -ENOBUFS;
	tp->fastopen_req->data = msg;
	tp->fastopen_req->size = size;
	tp->fastopen_req->uarg = uarg;

	if (inet->defer_connect) {
		err = FUNC4(sk);
		/* Same failure procedure as in tcp_v4/6_connect */
		if (err) {
			FUNC6(sk, TCP_CLOSE);
			inet->inet_dport = 0;
			sk->sk_route_caps = 0;
		}
	}
	flags = (msg->msg_flags & MSG_DONTWAIT) ? O_NONBLOCK : 0;
	err = FUNC0(sk->sk_socket, uaddr,
				    msg->msg_namelen, flags, 1);
	/* fastopen_req could already be freed in __inet_stream_connect
	 * if the connection times out or gets rst
	 */
	if (tp->fastopen_req) {
		*copied = tp->fastopen_req->copied;
		FUNC5(tp);
		inet->defer_connect = 0;
	}
	return err;
}