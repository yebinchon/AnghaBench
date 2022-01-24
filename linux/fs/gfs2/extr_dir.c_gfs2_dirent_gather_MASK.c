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
struct qstr {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct dirent_gather {int /*<<< orphan*/  offset; struct gfs2_dirent const** pdent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_dirent const*) ; 

__attribute__((used)) static int FUNC1(const struct gfs2_dirent *dent,
			      const struct qstr *name,
			      void *opaque)
{
	struct dirent_gather *g = opaque;
	if (!FUNC0(dent)) {
		g->pdent[g->offset++] = dent;
	}
	return 0;
}