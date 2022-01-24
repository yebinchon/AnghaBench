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
struct addr_filter {char* str; int range; int /*<<< orphan*/  filename; int /*<<< orphan*/  sym_to_idx; int /*<<< orphan*/  sym_to; int /*<<< orphan*/  size; int /*<<< orphan*/  sym_from_idx; int /*<<< orphan*/  sym_from; int /*<<< orphan*/  addr; int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct addr_filter*) ; 
 int FUNC1 (struct addr_filter*) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct addr_filter *filt, const char **filter_inp)
{
	char *fstr;
	int err;

	filt->str = fstr = FUNC4(*filter_inp);
	if (!fstr)
		return -ENOMEM;

	err = FUNC3(&fstr, NULL, &filt->action, " ");
	if (err)
		goto out_err;

	err = FUNC1(filt);
	if (err)
		goto out_err;

	err = FUNC2(&fstr, &filt->addr, &filt->sym_from,
			      &filt->sym_from_idx);
	if (err)
		goto out_err;

	fstr += FUNC5(fstr, " ");

	if (*fstr == '/') {
		fstr += 1;
		err = FUNC2(&fstr, &filt->size, &filt->sym_to,
				      &filt->sym_to_idx);
		if (err)
			goto out_err;
		filt->range = true;
	}

	fstr += FUNC5(fstr, " ");

	if (*fstr == '@') {
		fstr += 1;
		err = FUNC3(&fstr, NULL, &filt->filename, " ,");
		if (err)
			goto out_err;
	}

	fstr += FUNC5(fstr, " ,");

	*filter_inp += fstr - filt->str;

	return 0;

out_err:
	FUNC0(filt);

	return err;
}