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
struct gfs2_glock {int /*<<< orphan*/  gl_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLF_FROZEN ; 
 int /*<<< orphan*/  GLF_REPLY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gfs2_glock *gl)
{
	if (!FUNC3(GLF_FROZEN, &gl->gl_flags)) {
		FUNC0(gl);
		return;
	}
	FUNC2(GLF_REPLY_PENDING, &gl->gl_flags);
	FUNC1(gl, 0);
}