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
struct sock {scalar_t__ sk_state; } ;
struct iucv_sock {scalar_t__ transport; scalar_t__ msglimit_peer; int /*<<< orphan*/  pendings; int /*<<< orphan*/  msg_sent; TYPE_1__* path; int /*<<< orphan*/  send_skb_q; } ;
struct TYPE_2__ {scalar_t__ msglim; } ;

/* Variables and functions */
 scalar_t__ AF_IUCV_TRANS_IUCV ; 
 scalar_t__ IUCV_CONNECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct iucv_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct sock *sk)
{
	struct iucv_sock *iucv = FUNC1(sk);

	if (sk->sk_state != IUCV_CONNECTED)
		return 1;
	if (iucv->transport == AF_IUCV_TRANS_IUCV)
		return (FUNC2(&iucv->send_skb_q) < iucv->path->msglim);
	else
		return ((FUNC0(&iucv->msg_sent) < iucv->msglimit_peer) &&
			(FUNC0(&iucv->pendings) <= 0));
}