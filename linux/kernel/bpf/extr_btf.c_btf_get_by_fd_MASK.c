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
struct fd {TYPE_1__* file; } ;
struct btf {int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {struct btf* private_data; int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EINVAL ; 
 struct btf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btf_fops ; 
 struct fd FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fd) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct btf *FUNC4(int fd)
{
	struct btf *btf;
	struct fd f;

	f = FUNC1(fd);

	if (!f.file)
		return FUNC0(-EBADF);

	if (f.file->f_op != &btf_fops) {
		FUNC2(f);
		return FUNC0(-EINVAL);
	}

	btf = f.file->private_data;
	FUNC3(&btf->refcnt);
	FUNC2(f);

	return btf;
}