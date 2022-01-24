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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_psock {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int MSG_ERRQUEUE ; 
 int FUNC0 (struct sock*,struct sk_psock*,struct msghdr*,size_t,int) ; 
 int FUNC1 (struct sock*,struct msghdr*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct sk_psock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_psock*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (struct sock*,int) ; 
 int FUNC8 (struct sock*,struct sk_psock*,int,long,int*) ; 
 int FUNC9 (struct sock*,struct msghdr*,size_t,int,int,int*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct sock *sk, struct msghdr *msg, size_t len,
		    int nonblock, int flags, int *addr_len)
{
	struct sk_psock *psock;
	int copied, ret;

	if (FUNC10(flags & MSG_ERRQUEUE))
		return FUNC1(sk, msg, len, addr_len);
	if (!FUNC6(&sk->sk_receive_queue))
		return FUNC9(sk, msg, len, nonblock, flags, addr_len);

	psock = FUNC4(sk);
	if (FUNC10(!psock))
		return FUNC9(sk, msg, len, nonblock, flags, addr_len);
	FUNC2(sk);
msg_bytes_ready:
	copied = FUNC0(sk, psock, msg, len, flags);
	if (!copied) {
		int data, err = 0;
		long timeo;

		timeo = FUNC7(sk, nonblock);
		data = FUNC8(sk, psock, flags, timeo, &err);
		if (data) {
			if (FUNC6(&sk->sk_receive_queue))
				goto msg_bytes_ready;
			FUNC3(sk);
			FUNC5(sk, psock);
			return FUNC9(sk, msg, len, nonblock, flags, addr_len);
		}
		if (err) {
			ret = err;
			goto out;
		}
		copied = -EAGAIN;
	}
	ret = copied;
out:
	FUNC3(sk);
	FUNC5(sk, psock);
	return ret;
}