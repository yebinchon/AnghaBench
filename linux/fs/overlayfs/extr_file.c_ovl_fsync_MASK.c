#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct fd {struct file* file; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fd) ; 
 TYPE_1__* FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 struct cred* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*,struct fd*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct file *file, loff_t start, loff_t end, int datasync)
{
	struct fd real;
	const struct cred *old_cred;
	int ret;

	ret = FUNC4(file, &real, !datasync);
	if (ret)
		return ret;

	/* Don't sync lower file for fear of receiving EROFS error */
	if (FUNC1(real.file) == FUNC2(FUNC1(file))) {
		old_cred = FUNC3(FUNC1(file)->i_sb);
		ret = FUNC6(real.file, start, end, datasync);
		FUNC5(old_cred);
	}

	FUNC0(real);

	return ret;
}