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
struct file {int dummy; } ;
struct fd {int /*<<< orphan*/  file; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fd) ; 
 TYPE_1__* FUNC1 (struct file*) ; 
 struct cred* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,struct fd*) ; 
 int /*<<< orphan*/  FUNC4 (struct cred const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct file *file, loff_t offset, loff_t len, int advice)
{
	struct fd real;
	const struct cred *old_cred;
	int ret;

	ret = FUNC3(file, &real);
	if (ret)
		return ret;

	old_cred = FUNC2(FUNC1(file)->i_sb);
	ret = FUNC5(real.file, offset, len, advice);
	FUNC4(old_cred);

	FUNC0(real);

	return ret;
}