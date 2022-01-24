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
struct gfs2_glock {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int PF_MEMALLOC ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*) ; 

__attribute__((used)) static void FUNC2(struct gfs2_glock *gl)
{
	if (current->flags & PF_MEMALLOC)
		FUNC1(gl);
	else
		FUNC0(gl);
}