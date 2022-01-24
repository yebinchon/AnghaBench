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
struct sock {int dummy; } ;
struct dn_scp {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DN_CI ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  NSP_RCI ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);

	if (scp->state == DN_CI)
		FUNC1(sk, NSP_RCI);

	return 0;
}