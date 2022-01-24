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
typedef  int /*<<< orphan*/  u64 ;
struct fei_attr {int /*<<< orphan*/  retval; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct fei_attr*) ; 
 int /*<<< orphan*/  fei_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *data, u64 *val)
{
	struct fei_attr *attr = data;
	int err = 0;

	FUNC1(&fei_lock);
	/* Here we also validate @attr to ensure it still exists. */
	if (!FUNC0(attr))
		err = -ENOENT;
	else
		*val = attr->retval;
	FUNC2(&fei_lock);

	return err;
}