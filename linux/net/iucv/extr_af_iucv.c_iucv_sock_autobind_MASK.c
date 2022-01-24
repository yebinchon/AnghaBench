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
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct iucv_sock {scalar_t__ msglimit; int /*<<< orphan*/  transport; int /*<<< orphan*/  src_user_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IUCV_TRANS_IUCV ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_DMA ; 
 scalar_t__ IUCV_QUEUELEN_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct iucv_sock*) ; 
 struct iucv_sock* FUNC1 (struct sock*) ; 
 TYPE_1__ iucv_sk_list ; 
 int /*<<< orphan*/  iucv_userid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pr_iucv ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sock *sk)
{
	struct iucv_sock *iucv = FUNC1(sk);
	int err = 0;

	if (FUNC3(!pr_iucv))
		return -EPROTO;

	FUNC2(iucv->src_user_id, iucv_userid, 8);
	iucv->transport = AF_IUCV_TRANS_IUCV;
	sk->sk_allocation |= GFP_DMA;

	FUNC4(&iucv_sk_list.lock);
	FUNC0(iucv);
	FUNC5(&iucv_sk_list.lock);

	if (!iucv->msglimit)
		iucv->msglimit = IUCV_QUEUELEN_DEFAULT;

	return err;
}