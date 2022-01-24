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
struct tls_context {int /*<<< orphan*/  tx_lock; } ;
struct sock {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_flags; int /*<<< orphan*/  msg_iter; int /*<<< orphan*/  msg_controllen; } ;

/* Variables and functions */
 unsigned char TLS_RECORD_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct tls_context* FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,struct msghdr*,unsigned char*) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct sock *sk, struct msghdr *msg, size_t size)
{
	unsigned char record_type = TLS_RECORD_TYPE_DATA;
	struct tls_context *tls_ctx = FUNC4(sk);
	int rc;

	FUNC1(&tls_ctx->tx_lock);
	FUNC0(sk);

	if (FUNC7(msg->msg_controllen)) {
		rc = FUNC5(sk, msg, &record_type);
		if (rc)
			goto out;
	}

	rc = FUNC6(sk, &msg->msg_iter, size,
			   msg->msg_flags, record_type);

out:
	FUNC3(sk);
	FUNC2(&tls_ctx->tx_lock);
	return rc;
}