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
struct hlist_head {int dummy; } ;
struct TYPE_2__ {int sdn_flags; } ;
struct dn_scp {TYPE_1__ addr; scalar_t__ addrloc; } ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 int SDF_WILD ; 
 int /*<<< orphan*/  dn_hash_lock ; 
 struct hlist_head* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct hlist_head *list;
	struct dn_scp *scp = FUNC0(sk);

	if (scp->addr.sdn_flags & SDF_WILD)
		return;

	FUNC4(&dn_hash_lock);
	FUNC3(sk);
	FUNC0(sk)->addrloc = 0;
	list = FUNC1(&FUNC0(sk)->addr);
	FUNC2(sk, list);
	FUNC5(&dn_hash_lock);
}