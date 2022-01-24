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
struct file {int f_flags; int /*<<< orphan*/  f_mode; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_NDELAY ; 
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int O_NDELAY ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 long FUNC2 (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 

__attribute__((used)) static long FUNC3(struct file *file, unsigned cmd, unsigned long arg)
{
	struct block_device *bdev = FUNC0(FUNC1(file));
	fmode_t mode = file->f_mode;

	/*
	 * O_NDELAY can be altered using fcntl(.., F_SETFL, ..), so we have
	 * to updated it before every ioctl.
	 */
	if (file->f_flags & O_NDELAY)
		mode |= FMODE_NDELAY;
	else
		mode &= ~FMODE_NDELAY;

	return FUNC2(bdev, mode, cmd, arg);
}