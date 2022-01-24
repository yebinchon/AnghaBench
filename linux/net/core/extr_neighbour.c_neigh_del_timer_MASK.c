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
struct neighbour {int nud_state; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int NUD_IN_TIMER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct neighbour*) ; 

__attribute__((used)) static int FUNC2(struct neighbour *n)
{
	if ((n->nud_state & NUD_IN_TIMER) &&
	    FUNC0(&n->timer)) {
		FUNC1(n);
		return 1;
	}
	return 0;
}