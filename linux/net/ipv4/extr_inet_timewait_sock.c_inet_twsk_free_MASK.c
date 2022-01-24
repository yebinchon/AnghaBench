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
struct module {int dummy; } ;
struct inet_timewait_sock {TYPE_2__* tw_prot; } ;
struct TYPE_4__ {TYPE_1__* twsk_prot; int /*<<< orphan*/  name; struct module* owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  twsk_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct inet_timewait_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct inet_timewait_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct inet_timewait_sock *tw)
{
	struct module *owner = tw->tw_prot->owner;
	FUNC3((struct sock *)tw);
#ifdef SOCK_REFCNT_DEBUG
	pr_debug("%s timewait_sock %p released\n", tw->tw_prot->name, tw);
#endif
	FUNC0(tw->tw_prot->twsk_prot->twsk_slab, tw);
	FUNC1(owner);
}