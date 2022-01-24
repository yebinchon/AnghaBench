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
struct klist_node {int dummy; } ;
struct klist {void (* put ) (struct klist_node*) ;int /*<<< orphan*/  k_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct klist_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct klist_node*) ; 
 struct klist* FUNC2 (struct klist_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct klist_node *n, bool kill)
{
	struct klist *k = FUNC2(n);
	void (*put)(struct klist_node *) = k->put;

	FUNC3(&k->k_lock);
	if (kill)
		FUNC1(n);
	if (!FUNC0(n))
		put = NULL;
	FUNC4(&k->k_lock);
	if (put)
		put(n);
}