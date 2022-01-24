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
struct sock {int /*<<< orphan*/  sk_callback_lock; scalar_t__ sk_user_data; } ;
struct kcm_psock {int /*<<< orphan*/  strp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kcm_psock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct kcm_psock *psock;

	FUNC1(&sk->sk_callback_lock);

	psock = (struct kcm_psock *)sk->sk_user_data;
	if (FUNC0(psock))
		FUNC3(&psock->strp);

	FUNC2(&sk->sk_callback_lock);
}