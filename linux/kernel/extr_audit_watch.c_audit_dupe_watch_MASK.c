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
struct audit_watch {int /*<<< orphan*/  parent; int /*<<< orphan*/  ino; int /*<<< orphan*/  dev; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct audit_watch* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct audit_watch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct audit_watch* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct audit_watch *FUNC7(struct audit_watch *old)
{
	char *path;
	struct audit_watch *new;

	path = FUNC5(old->path, GFP_KERNEL);
	if (FUNC6(!path))
		return FUNC0(-ENOMEM);

	new = FUNC3(path);
	if (FUNC1(new)) {
		FUNC4(path);
		goto out;
	}

	new->dev = old->dev;
	new->ino = old->ino;
	FUNC2(old->parent);
	new->parent = old->parent;

out:
	return new;
}