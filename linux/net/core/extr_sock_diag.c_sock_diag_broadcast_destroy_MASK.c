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
struct broadcast_sk {int /*<<< orphan*/  work; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  broadcast_wq ; 
 struct broadcast_sk* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  sock_diag_broadcast_destroy_work ; 

void FUNC4(struct sock *sk)
{
	/* Note, this function is often called from an interrupt context. */
	struct broadcast_sk *bsk =
		FUNC1(sizeof(struct broadcast_sk), GFP_ATOMIC);
	if (!bsk)
		return FUNC3(sk);
	bsk->sk = sk;
	FUNC0(&bsk->work, sock_diag_broadcast_destroy_work);
	FUNC2(broadcast_wq, &bsk->work);
}