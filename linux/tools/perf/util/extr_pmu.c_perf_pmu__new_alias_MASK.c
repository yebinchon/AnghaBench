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
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct list_head*,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct list_head *list, char *dir, char *name, FILE *file)
{
	char buf[256];
	int ret;

	ret = FUNC1(buf, 1, sizeof(buf), file);
	if (ret == 0)
		return -EINVAL;

	buf[ret] = 0;

	/* Remove trailing newline from sysfs file */
	FUNC2(buf);

	return FUNC0(list, dir, name, NULL, buf, NULL, NULL, NULL,
				     NULL, NULL, NULL);
}