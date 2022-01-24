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
struct kvec {char* iov_base; size_t iov_len; } ;
struct iov_iter {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int MSG_MORE ; 
 int MSG_OOB ; 
 int MSG_SENDPAGE_NOTLAST ; 
 int /*<<< orphan*/  TLS_RECORD_TYPE_DATA ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct iov_iter*,int /*<<< orphan*/ ,struct kvec*,int,size_t) ; 
 char* FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct tls_context* FUNC7 (struct sock*) ; 
 int FUNC8 (struct sock*,struct iov_iter*,size_t,int,int /*<<< orphan*/ ) ; 

int FUNC9(struct sock *sk, struct page *page,
			int offset, size_t size, int flags)
{
	struct tls_context *tls_ctx = FUNC7(sk);
	struct iov_iter	msg_iter;
	char *kaddr = FUNC1(page);
	struct kvec iov;
	int rc;

	if (flags & MSG_SENDPAGE_NOTLAST)
		flags |= MSG_MORE;

	FUNC4(&tls_ctx->tx_lock);
	FUNC3(sk);

	if (flags & MSG_OOB) {
		rc = -ENOTSUPP;
		goto out;
	}

	iov.iov_base = kaddr + offset;
	iov.iov_len = size;
	FUNC0(&msg_iter, WRITE, &iov, 1, size);
	rc = FUNC8(sk, &msg_iter, size,
			   flags, TLS_RECORD_TYPE_DATA);
	FUNC2(page);

out:
	FUNC6(sk);
	FUNC5(&tls_ctx->tx_lock);
	return rc;
}