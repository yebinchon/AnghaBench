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
struct files_struct {int dummy; } ;
struct file {int dummy; } ;
struct cred {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_RDWR ; 
 struct aa_label* FUNC1 (struct cred const*) ; 
 int /*<<< orphan*/  aa_null ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 struct file* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cred const*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 unsigned int FUNC5 (struct files_struct*,unsigned int,int /*<<< orphan*/ ,struct aa_label*) ; 
 int /*<<< orphan*/  match_file ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aa_label*) ; 

void FUNC8(const struct cred *cred, struct files_struct *files)
{
	struct aa_label *label = FUNC1(cred);
	struct file *devnull = NULL;
	unsigned int n;

	FUNC7(label);

	/* Revalidate access to inherited open files. */
	n = FUNC5(files, 0, match_file, label);
	if (!n) /* none found? */
		goto out;

	devnull = FUNC3(&aa_null, O_RDWR, cred);
	if (FUNC0(devnull))
		devnull = NULL;
	/* replace all the matching ones with this */
	do {
		FUNC6(n - 1, devnull, 0);
	} while ((n = FUNC5(files, n, match_file, label)) != 0);
	if (devnull)
		FUNC4(devnull);
out:
	FUNC2(label);
}