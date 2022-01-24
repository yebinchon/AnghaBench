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
struct gfs2_glock {int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_lru; TYPE_1__* gl_ops; } ;
struct TYPE_2__ {int go_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_LRU ; 
 int GLOF_LRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lru_count ; 
 int /*<<< orphan*/  lru_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct gfs2_glock *gl)
{
	if (!(gl->gl_ops->go_flags & GLOF_LRU))
		return;

	FUNC3(&lru_lock);
	if (FUNC5(GLF_LRU, &gl->gl_flags)) {
		FUNC2(&gl->gl_lru);
		FUNC0(&lru_count);
		FUNC1(GLF_LRU, &gl->gl_flags);
	}
	FUNC4(&lru_lock);
}