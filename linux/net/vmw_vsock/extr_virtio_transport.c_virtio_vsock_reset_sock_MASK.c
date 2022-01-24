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
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	FUNC0(sk);
	sk->sk_state = TCP_CLOSE;
	sk->sk_err = ECONNRESET;
	sk->sk_error_report(sk);
	FUNC1(sk);
}