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
struct strlist {int dummy; } ;
struct strfilter {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int,struct strlist*) ; 
 int FUNC1 (int,struct strfilter*,struct strlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct strlist*) ; 
 struct strlist* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(int fd, struct strfilter *filter)
{
	struct strlist *namelist;
	int ret;

	namelist = FUNC3(NULL, NULL);
	if (!namelist)
		return -ENOMEM;

	ret = FUNC1(fd, filter, namelist);
	if (ret < 0)
		return ret;

	ret = FUNC0(fd, namelist);
	FUNC2(namelist);

	return ret;
}