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
struct sock {int dummy; } ;
struct sk_psock {size_t cork_bytes; int /*<<< orphan*/  eval; struct sk_msg* cork; } ;
struct sk_msg {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __SK_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,size_t) ; 
 int FUNC3 (struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_msg*,struct page*,size_t,int) ; 
 struct sk_psock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_psock*) ; 
 int FUNC8 (struct sock*,struct sk_psock*,struct sk_msg*,int*,int) ; 
 int FUNC9 (struct sock*,struct page*,int,size_t,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct page *page, int offset,
			    size_t size, int flags)
{
	struct sk_msg tmp, *msg = NULL;
	int err = 0, copied = 0;
	struct sk_psock *psock;
	bool enospc = false;

	psock = FUNC6(sk);
	if (FUNC10(!psock))
		return FUNC9(sk, page, offset, size, flags);

	FUNC0(sk);
	if (psock->cork) {
		msg = psock->cork;
	} else {
		msg = &tmp;
		FUNC4(msg);
	}

	/* Catch case where ring is full and sendpage is stalled. */
	if (FUNC10(FUNC3(msg)))
		goto out_err;

	FUNC5(msg, page, size, offset);
	FUNC2(sk, size);
	copied = size;
	if (FUNC3(msg))
		enospc = true;
	if (psock->cork_bytes) {
		if (size > psock->cork_bytes)
			psock->cork_bytes = 0;
		else
			psock->cork_bytes -= size;
		if (psock->cork_bytes && !enospc)
			goto out_err;
		/* All cork bytes are accounted, rerun the prog. */
		psock->eval = __SK_NONE;
		psock->cork_bytes = 0;
	}

	err = FUNC8(sk, psock, msg, &copied, flags);
out_err:
	FUNC1(sk);
	FUNC7(sk, psock);
	return copied ? copied : err;
}