#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* a3d; } ;
typedef  TYPE_1__ vortex_t ;
struct TYPE_7__ {int source; int slice; void* vortex; } ;
typedef  TYPE_2__ a3dsrc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(vortex_t * v, int source, int slice)
{
	a3dsrc_t *a3dsrc = &(v->a3d[source + (slice * 4)]);
	//a3dsrc_t *a3dsrc = &(v->a3d[source + (slice*4)]);

	a3dsrc->vortex = (void *)v;
	a3dsrc->source = source;	/* source */
	a3dsrc->slice = slice;	/* slice */
	FUNC1(a3dsrc);
	/* Added by me. */
	FUNC0(a3dsrc, 0x11);
}