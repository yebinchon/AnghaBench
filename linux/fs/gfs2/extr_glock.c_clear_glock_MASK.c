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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct gfs2_glock {scalar_t__ gl_state; TYPE_1__ gl_lockref; } ;

/* Variables and functions */
 scalar_t__ LM_ST_UNLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_glock*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gfs2_glock *gl)
{
	FUNC1(gl);

	FUNC3(&gl->gl_lockref.lock);
	if (gl->gl_state != LM_ST_UNLOCKED)
		FUNC2(gl, LM_ST_UNLOCKED, 0, false);
	FUNC0(gl, 0);
	FUNC4(&gl->gl_lockref.lock);
}