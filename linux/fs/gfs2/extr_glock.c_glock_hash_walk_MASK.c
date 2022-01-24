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
struct rhashtable_iter {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {struct gfs2_sbd const* ln_sbd; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_lockref; TYPE_1__ gl_name; } ;
typedef  int /*<<< orphan*/  (* glock_examiner ) (struct gfs2_glock*) ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct gfs2_glock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  gl_hash_table ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct rhashtable_iter*) ; 
 struct gfs2_glock* FUNC6 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct rhashtable_iter*) ; 

__attribute__((used)) static void FUNC9(glock_examiner examiner, const struct gfs2_sbd *sdp)
{
	struct gfs2_glock *gl;
	struct rhashtable_iter iter;

	FUNC4(&gl_hash_table, &iter);

	do {
		FUNC7(&iter);

		while ((gl = FUNC6(&iter)) && !FUNC1(gl))
			if (gl->gl_name.ln_sbd == sdp &&
			    FUNC3(&gl->gl_lockref))
				examiner(gl);

		FUNC8(&iter);
	} while (FUNC2(), gl == FUNC0(-EAGAIN));

	FUNC5(&iter);
}