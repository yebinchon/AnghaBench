#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct inet_bind_bucket {int /*<<< orphan*/  owners; } ;
struct TYPE_4__ {struct inet_bind_bucket* icsk_bind_hash; } ;
struct TYPE_3__ {unsigned short inet_num; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 

void FUNC3(struct sock *sk, struct inet_bind_bucket *tb,
		    const unsigned short snum)
{
	FUNC1(sk)->inet_num = snum;
	FUNC2(sk, &tb->owners);
	FUNC0(sk)->icsk_bind_hash = tb;
}