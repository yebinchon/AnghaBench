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
struct slob_rcu {void* size; } ;
struct rcu_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 

__attribute__((used)) static void FUNC1(struct rcu_head *head)
{
	struct slob_rcu *slob_rcu = (struct slob_rcu *)head;
	void *b = (void *)slob_rcu - (slob_rcu->size - sizeof(struct slob_rcu));

	FUNC0(b, slob_rcu->size);
}