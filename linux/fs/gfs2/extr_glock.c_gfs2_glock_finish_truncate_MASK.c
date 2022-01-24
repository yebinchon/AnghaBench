#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  ln_sbd; } ;
struct gfs2_glock {TYPE_2__ gl_lockref; int /*<<< orphan*/  gl_flags; TYPE_1__ gl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct gfs2_inode *ip)
{
	struct gfs2_glock *gl = ip->i_gl;
	int ret;

	ret = FUNC2(ip);
	FUNC1(gl->gl_name.ln_sbd, ret == 0);

	FUNC4(&gl->gl_lockref.lock);
	FUNC0(GLF_LOCK, &gl->gl_flags);
	FUNC3(gl, 1);
	FUNC5(&gl->gl_lockref.lock);
}