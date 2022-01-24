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
struct audit_watch {char* path; int /*<<< orphan*/  ino; int /*<<< orphan*/  dev; int /*<<< orphan*/  count; int /*<<< orphan*/  rules; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_DEV_UNSET ; 
 int /*<<< orphan*/  AUDIT_INO_UNSET ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct audit_watch* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct audit_watch* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct audit_watch *FUNC5(char *path)
{
	struct audit_watch *watch;

	watch = FUNC2(sizeof(*watch), GFP_KERNEL);
	if (FUNC4(!watch))
		return FUNC0(-ENOMEM);

	FUNC1(&watch->rules);
	FUNC3(&watch->count, 1);
	watch->path = path;
	watch->dev = AUDIT_DEV_UNSET;
	watch->ino = AUDIT_INO_UNSET;

	return watch;
}