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
struct neighbour {int nud_state; int /*<<< orphan*/  parms; int /*<<< orphan*/  probes; scalar_t__ updated; scalar_t__ dead; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUD_FAILED ; 
 int NUD_INCOMPLETE ; 
 int /*<<< orphan*/  RETRANS_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct neighbour*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct neighbour*) ; 

void FUNC4(struct neighbour *neigh)
{
	if (neigh->dead)
		return;
	neigh->updated = jiffies;
	if (!(neigh->nud_state & NUD_FAILED))
		return;
	neigh->nud_state = NUD_INCOMPLETE;
	FUNC1(&neigh->probes, FUNC3(neigh));
	FUNC2(neigh,
			jiffies + FUNC0(neigh->parms, RETRANS_TIME));
}