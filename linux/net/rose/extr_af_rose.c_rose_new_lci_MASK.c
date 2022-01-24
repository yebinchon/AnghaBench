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
struct rose_neigh {scalar_t__ dce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,struct rose_neigh*) ; 
 int /*<<< orphan*/ * FUNC1 (int,struct rose_neigh*) ; 
 int sysctl_rose_maximum_vcs ; 

unsigned int FUNC2(struct rose_neigh *neigh)
{
	int lci;

	if (neigh->dce_mode) {
		for (lci = 1; lci <= sysctl_rose_maximum_vcs; lci++)
			if (FUNC0(lci, neigh) == NULL && FUNC1(lci, neigh) == NULL)
				return lci;
	} else {
		for (lci = sysctl_rose_maximum_vcs; lci > 0; lci--)
			if (FUNC0(lci, neigh) == NULL && FUNC1(lci, neigh) == NULL)
				return lci;
	}

	return 0;
}