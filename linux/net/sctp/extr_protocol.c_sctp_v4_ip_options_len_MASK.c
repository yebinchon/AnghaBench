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
struct sock {int dummy; } ;
struct TYPE_2__ {int optlen; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_sock {int /*<<< orphan*/  inet_opt; } ;

/* Variables and functions */
 struct inet_sock* FUNC0 (struct sock*) ; 
 struct ip_options_rcu* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct sock *sk)
{
	struct inet_sock *inet = FUNC0(sk);
	struct ip_options_rcu *inet_opt;
	int len = 0;

	FUNC2();
	inet_opt = FUNC1(inet->inet_opt);
	if (inet_opt)
		len = inet_opt->opt.optlen;

	FUNC3();
	return len;
}