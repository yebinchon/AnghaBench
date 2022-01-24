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
struct path {int /*<<< orphan*/  mnt; } ;
struct file {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct file* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct file* FUNC3 (int,struct cred const*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 int FUNC6 (struct path const*,struct file*) ; 

struct file *FUNC7(const struct path *path, int flags,
			 const struct cred *cred)
{
	int error;
	struct file *f;

	FUNC5(cred);

	/* We must always pass in a valid mount pointer. */
	FUNC0(!path->mnt);

	f = FUNC3(flags, cred);
	if (!FUNC2(f)) {
		error = FUNC6(path, f);
		if (error) {
			FUNC4(f);
			f = FUNC1(error);
		}
	}
	return f;
}