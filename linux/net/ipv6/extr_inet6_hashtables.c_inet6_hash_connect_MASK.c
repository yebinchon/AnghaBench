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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct inet_timewait_death_row {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inet_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  __inet6_check_established ; 
 int FUNC0 (struct inet_timewait_death_row*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

int FUNC3(struct inet_timewait_death_row *death_row,
		       struct sock *sk)
{
	u32 port_offset = 0;

	if (!FUNC2(sk)->inet_num)
		port_offset = FUNC1(sk);
	return FUNC0(death_row, sk, port_offset,
				   __inet6_check_established);
}