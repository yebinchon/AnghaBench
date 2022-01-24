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
struct key_vector {scalar_t__ slen; int /*<<< orphan*/ * tnode; } ;
struct TYPE_2__ {int /*<<< orphan*/  full_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC2 (struct key_vector*) ; 
 int /*<<< orphan*/  FUNC3 (struct key_vector*) ; 
 struct key_vector* FUNC4 (struct key_vector*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct key_vector*) ; 
 TYPE_1__* FUNC6 (struct key_vector*) ; 
 int FUNC7 (struct key_vector*,struct key_vector*) ; 

__attribute__((used)) static void FUNC8(struct key_vector *tn, unsigned long i,
		      struct key_vector *n)
{
	struct key_vector *chi = FUNC4(tn, i);
	int isfull, wasfull;

	FUNC0(i >= FUNC1(tn));

	/* update emptyChildren, overflow into fullChildren */
	if (!n && chi)
		FUNC3(tn);
	if (n && !chi)
		FUNC2(tn);

	/* update fullChildren */
	wasfull = FUNC7(tn, chi);
	isfull = FUNC7(tn, n);

	if (wasfull && !isfull)
		FUNC6(tn)->full_children--;
	else if (!wasfull && isfull)
		FUNC6(tn)->full_children++;

	if (n && (tn->slen < n->slen))
		tn->slen = n->slen;

	FUNC5(tn->tnode[i], n);
}