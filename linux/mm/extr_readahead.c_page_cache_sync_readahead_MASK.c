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
struct file_ra_state {int /*<<< orphan*/  ra_pages; } ;
struct file {int f_mode; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int FMODE_RANDOM ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*,struct file*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,struct file_ra_state*,struct file*,int,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC3(struct address_space *mapping,
			       struct file_ra_state *ra, struct file *filp,
			       pgoff_t offset, unsigned long req_size)
{
	/* no read-ahead */
	if (!ra->ra_pages)
		return;

	if (FUNC0())
		return;

	/* be dumb */
	if (filp && (filp->f_mode & FMODE_RANDOM)) {
		FUNC1(mapping, filp, offset, req_size);
		return;
	}

	/* do read-ahead */
	FUNC2(mapping, ra, filp, false, offset, req_size);
}