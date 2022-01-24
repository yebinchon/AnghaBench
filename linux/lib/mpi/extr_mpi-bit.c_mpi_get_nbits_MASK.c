#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mpi_limb_t ;
struct TYPE_4__ {int nlimbs; scalar_t__* d; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 unsigned int BITS_PER_MPI_LIMB ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

unsigned FUNC2(MPI a)
{
	unsigned n;

	FUNC1(a);

	if (a->nlimbs) {
		mpi_limb_t alimb = a->d[a->nlimbs - 1];
		if (alimb)
			n = FUNC0(alimb);
		else
			n = BITS_PER_MPI_LIMB;
		n = BITS_PER_MPI_LIMB - n + (a->nlimbs - 1) * BITS_PER_MPI_LIMB;
	} else
		n = 0;
	return n;
}