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
struct TYPE_2__ {scalar_t__ s_net; int /*<<< orphan*/  s_node; } ;
struct sockaddr_at {TYPE_1__ sat_addr; } ;
struct sock {int dummy; } ;
struct atalk_sock {scalar_t__ src_net; int /*<<< orphan*/  src_node; } ;
struct atalk_addr {scalar_t__ s_net; int /*<<< orphan*/  s_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATADDR_ANYNET ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 struct atalk_sock* FUNC0 (struct sock*) ; 
 struct atalk_addr* FUNC1 () ; 
 int FUNC2 (struct sock*,struct sockaddr_at*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sock *sk)
{
	struct atalk_sock *at = FUNC0(sk);
	struct sockaddr_at sat;
	struct atalk_addr *ap = FUNC1();
	int n = -EADDRNOTAVAIL;

	if (!ap || ap->s_net == FUNC3(ATADDR_ANYNET))
		goto out;

	at->src_net  = sat.sat_addr.s_net  = ap->s_net;
	at->src_node = sat.sat_addr.s_node = ap->s_node;

	n = FUNC2(sk, &sat);
	if (!n)
		FUNC4(sk, SOCK_ZAPPED);
out:
	return n;
}