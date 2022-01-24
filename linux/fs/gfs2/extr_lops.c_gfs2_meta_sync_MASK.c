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
struct address_space {int dummy; } ;
struct gfs2_sbd {struct address_space sd_aspace; } ;
struct TYPE_2__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;

/* Variables and functions */
 int FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*) ; 
 struct address_space* FUNC2 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 

__attribute__((used)) static void FUNC4(struct gfs2_glock *gl)
{
	struct address_space *mapping = FUNC2(gl);
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	int error;

	if (mapping == NULL)
		mapping = &sdp->sd_aspace;

	FUNC1(mapping);
	error = FUNC0(mapping);

	if (error)
		FUNC3(gl->gl_name.ln_sbd);
}