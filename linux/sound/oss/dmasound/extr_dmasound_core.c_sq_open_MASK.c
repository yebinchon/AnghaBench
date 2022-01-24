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
struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  default_hard; int /*<<< orphan*/  default_soft; int /*<<< orphan*/  (* sq_open ) (int) ;} ;
struct TYPE_4__ {int minDev; TYPE_1__ mach; int /*<<< orphan*/  hard; int /*<<< orphan*/  dsp; int /*<<< orphan*/  soft; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_MU_LAW ; 
 int ENODEV ; 
 int ENXIO ; 
 int FMODE_READ ; 
 int SND_DEV_AUDIO ; 
 TYPE_2__ dmasound ; 
 int /*<<< orphan*/  dmasound_core_mutex ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ shared_resource_owner ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	int rc;

	FUNC2(&dmasound_core_mutex);
	if (!FUNC8(dmasound.mach.owner)) {
		FUNC3(&dmasound_core_mutex);
		return -ENODEV;
	}

	rc = FUNC9(file); /* checks the f_mode */
	if (rc)
		goto out;
	if (file->f_mode & FMODE_READ) {
		/* TODO: if O_RDWR, release any resources grabbed by write part */
		rc = -ENXIO ; /* I think this is what is required by open(2) */
		goto out;
	}

	if (dmasound.mach.sq_open)
	    dmasound.mach.sq_open(file->f_mode);

	/* CHECK whether this is sensible - in the case that dsp0 could be opened
	  O_RDONLY and dsp1 could be opened O_WRONLY
	*/

	dmasound.minDev = FUNC0(inode) & 0x0f;

	/* OK. - we should make some attempt at consistency. At least the H'ware
	   options should be set with a valid mode.  We will make it that the LL
	   driver must supply defaults for hard & soft params.
	*/

	if (shared_resource_owner == 0) {
		/* you can make this AFMT_U8/mono/8K if you want to mimic old
		   OSS behaviour - while we still have soft translations ;-) */
		dmasound.soft = dmasound.mach.default_soft ;
		dmasound.dsp = dmasound.mach.default_soft ;
		dmasound.hard = dmasound.mach.default_hard ;
	}

#ifndef DMASOUND_STRICT_OSS_COMPLIANCE
	/* none of the current LL drivers can actually do this "native" at the moment
	   OSS does not really require us to supply /dev/audio if we can't do it.
	*/
	if (dmasound.minDev == SND_DEV_AUDIO) {
		FUNC5(8000);
		FUNC6(0);
		FUNC4(AFMT_MU_LAW);
	}
#endif
	FUNC3(&dmasound_core_mutex);
	return 0;
 out:
	FUNC1(dmasound.mach.owner);
	FUNC3(&dmasound_core_mutex);
	return rc;
}