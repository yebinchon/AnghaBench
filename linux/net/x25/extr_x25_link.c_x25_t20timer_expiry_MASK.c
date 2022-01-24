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
struct x25_neigh {int dummy; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct x25_neigh* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct x25_neigh* nb ; 
 int /*<<< orphan*/  t20timer ; 
 int /*<<< orphan*/  FUNC1 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC2 (struct x25_neigh*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct x25_neigh *nb = FUNC0(nb, t, t20timer);

	FUNC2(nb);

	FUNC1(nb);
}