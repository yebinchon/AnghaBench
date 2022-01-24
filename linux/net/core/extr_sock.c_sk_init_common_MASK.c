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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sock {size_t sk_family; int /*<<< orphan*/  sk_callback_lock; TYPE_1__ sk_error_queue; TYPE_1__ sk_write_queue; TYPE_1__ sk_receive_queue; } ;

/* Variables and functions */
 scalar_t__ af_callback_keys ; 
 scalar_t__ af_elock_keys ; 
 int /*<<< orphan*/ * af_family_clock_key_strings ; 
 int /*<<< orphan*/ * af_family_elock_key_strings ; 
 int /*<<< orphan*/ * af_family_rlock_key_strings ; 
 int /*<<< orphan*/ * af_family_wlock_key_strings ; 
 scalar_t__ af_rlock_keys ; 
 scalar_t__ af_wlock_keys ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	FUNC2(&sk->sk_receive_queue);
	FUNC2(&sk->sk_write_queue);
	FUNC2(&sk->sk_error_queue);

	FUNC1(&sk->sk_callback_lock);
	FUNC0(&sk->sk_receive_queue.lock,
			af_rlock_keys + sk->sk_family,
			af_family_rlock_key_strings[sk->sk_family]);
	FUNC0(&sk->sk_write_queue.lock,
			af_wlock_keys + sk->sk_family,
			af_family_wlock_key_strings[sk->sk_family]);
	FUNC0(&sk->sk_error_queue.lock,
			af_elock_keys + sk->sk_family,
			af_family_elock_key_strings[sk->sk_family]);
	FUNC0(&sk->sk_callback_lock,
			af_callback_keys + sk->sk_family,
			af_family_clock_key_strings[sk->sk_family]);
}