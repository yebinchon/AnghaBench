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
struct linux_binprm {int called_set_creds; int /*<<< orphan*/  buf; int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  BINPRM_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct linux_binprm*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct linux_binprm*) ; 

int FUNC4(struct linux_binprm *bprm)
{
	int retval;
	loff_t pos = 0;

	FUNC0(bprm);

	/* fill in binprm security blob */
	retval = FUNC3(bprm);
	if (retval)
		return retval;
	bprm->called_set_creds = 1;

	FUNC2(bprm->buf, 0, BINPRM_BUF_SIZE);
	return FUNC1(bprm->file, bprm->buf, BINPRM_BUF_SIZE, &pos);
}