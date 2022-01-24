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
struct block_device {int dummy; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int EACCES ; 
 struct block_device* FUNC0 (int) ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 scalar_t__ FUNC2 (struct block_device*) ; 
 int FUNC3 (struct block_device*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*,int) ; 
 struct block_device* FUNC5 (char const*) ; 

struct block_device *FUNC6(const char *path, fmode_t mode,
					void *holder)
{
	struct block_device *bdev;
	int err;

	bdev = FUNC5(path);
	if (FUNC1(bdev))
		return bdev;

	err = FUNC3(bdev, mode, holder);
	if (err)
		return FUNC0(err);

	if ((mode & FMODE_WRITE) && FUNC2(bdev)) {
		FUNC4(bdev, mode);
		return FUNC0(-EACCES);
	}

	return bdev;
}