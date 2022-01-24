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
struct dentry {int /*<<< orphan*/  d_name; struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (char**,int*,char*,int) ; 
 int FUNC6 (char**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  rename_lock ; 

__attribute__((used)) static char *FUNC10(struct dentry *d, char *buf, int buflen)
{
	struct dentry *dentry;
	char *end, *retval;
	int len, seq = 0;
	int error = 0;

	if (buflen < 2)
		goto Elong;

	FUNC7();
restart:
	dentry = d;
	end = buf + buflen;
	len = buflen;
	FUNC5(&end, &len, "\0", 1);
	/* Get '/' right */
	retval = end-1;
	*retval = '/';
	FUNC9(&rename_lock, &seq);
	while (!FUNC1(dentry)) {
		struct dentry *parent = dentry->d_parent;

		FUNC4(parent);
		error = FUNC6(&end, &len, &dentry->d_name);
		if (error)
			break;

		retval = end;
		dentry = parent;
	}
	if (!(seq & 1))
		FUNC8();
	if (FUNC3(&rename_lock, seq)) {
		seq = 1;
		goto restart;
	}
	FUNC2(&rename_lock, seq);
	if (error)
		goto Elong;
	return retval;
Elong:
	return FUNC0(-ENAMETOOLONG);
}