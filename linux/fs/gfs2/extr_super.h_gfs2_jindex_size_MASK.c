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
struct gfs2_sbd {unsigned int sd_journals; int /*<<< orphan*/  sd_jindex_spin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct gfs2_sbd *sdp)
{
	unsigned int x;
	FUNC0(&sdp->sd_jindex_spin);
	x = sdp->sd_journals;
	FUNC1(&sdp->sd_jindex_spin);
	return x;
}