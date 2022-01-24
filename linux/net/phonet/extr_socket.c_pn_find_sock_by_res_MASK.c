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
typedef  size_t u8 ;
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ *) ; 
 TYPE_1__ pnres ; 
 struct sock* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

struct sock *FUNC5(struct net *net, u8 res)
{
	struct sock *sk;

	if (!FUNC0(net, &init_net))
		return NULL;

	FUNC2();
	sk = FUNC1(pnres.sk[res]);
	if (sk)
		FUNC4(sk);
	FUNC3();
	return sk;
}