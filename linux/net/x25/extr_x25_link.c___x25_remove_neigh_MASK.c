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
struct TYPE_2__ {scalar_t__ next; } ;
struct x25_neigh {TYPE_1__ node; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC3 (struct x25_neigh*) ; 

__attribute__((used)) static void FUNC4(struct x25_neigh *nb)
{
	FUNC1(&nb->queue);
	FUNC3(nb);

	if (nb->node.next) {
		FUNC0(&nb->node);
		FUNC2(nb);
	}
}