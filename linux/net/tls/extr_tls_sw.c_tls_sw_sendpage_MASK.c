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
struct page {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int MSG_DONTWAIT ; 
 int MSG_MORE ; 
 int MSG_NOSIGNAL ; 
 int MSG_SENDPAGE_NOPOLICY ; 
 int MSG_SENDPAGE_NOTLAST ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct tls_context* FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,struct page*,int,size_t,int) ; 

int FUNC6(struct sock *sk, struct page *page,
		    int offset, size_t size, int flags)
{
	struct tls_context *tls_ctx = FUNC4(sk);
	int ret;

	if (flags & ~(MSG_MORE | MSG_DONTWAIT | MSG_NOSIGNAL |
		      MSG_SENDPAGE_NOTLAST | MSG_SENDPAGE_NOPOLICY))
		return -ENOTSUPP;

	FUNC1(&tls_ctx->tx_lock);
	FUNC0(sk);
	ret = FUNC5(sk, page, offset, size, flags);
	FUNC3(sk);
	FUNC2(&tls_ctx->tx_lock);
	return ret;
}