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
struct TYPE_2__ {int /*<<< orphan*/  ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DLM_LOCK_CW 130 
#define  DLM_LOCK_EX 129 
#define  DLM_LOCK_PR 128 
 int /*<<< orphan*/  LM_ST_DEFERRED ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  LM_ST_UNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_glock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *arg, int mode)
{
	struct gfs2_glock *gl = arg;

	switch (mode) {
	case DLM_LOCK_EX:
		FUNC2(gl, LM_ST_UNLOCKED);
		break;
	case DLM_LOCK_CW:
		FUNC2(gl, LM_ST_DEFERRED);
		break;
	case DLM_LOCK_PR:
		FUNC2(gl, LM_ST_SHARED);
		break;
	default:
		FUNC1(gl->gl_name.ln_sbd, "unknown bast mode %d\n", mode);
		FUNC0();
	}
}