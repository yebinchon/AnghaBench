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
typedef  int /*<<< orphan*/  u16 ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*,unsigned int,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 

__attribute__((used)) static inline int FUNC3(struct gfs2_glock *gl,
				     unsigned int state, u16 flags,
				     struct gfs2_holder *gh)
{
	int error;

	FUNC1(gl, state, flags, gh);

	error = FUNC0(gh);
	if (error)
		FUNC2(gh);

	return error;
}