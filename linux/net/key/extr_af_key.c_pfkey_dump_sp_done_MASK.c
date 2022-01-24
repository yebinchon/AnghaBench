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
struct TYPE_3__ {int /*<<< orphan*/  policy; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct pfkey_sock {TYPE_2__ dump; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct net*) ; 

__attribute__((used)) static void FUNC2(struct pfkey_sock *pfk)
{
	struct net *net = FUNC0((struct sock *)pfk);

	FUNC1(&pfk->dump.u.policy, net);
}