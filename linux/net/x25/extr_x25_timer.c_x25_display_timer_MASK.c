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
struct TYPE_2__ {unsigned long expires; } ;
struct x25_sock {TYPE_1__ timer; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct x25_sock* FUNC1 (struct sock*) ; 

unsigned long FUNC2(struct sock *sk)
{
	struct x25_sock *x25 = FUNC1(sk);

	if (!FUNC0(&x25->timer))
		return 0;

	return x25->timer.expires - jiffies;
}