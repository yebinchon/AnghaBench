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
struct strbuf {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,struct strbuf*,struct list_head*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static int FUNC7(const char *list, struct strbuf *events,
				        struct list_head *group_list)
{
	char *llist, *nlist, *p;
	int ret = -EINVAL;

	nlist = FUNC5(list);
	if (!nlist)
		return -ENOMEM;
	llist = nlist;

	FUNC4(events, 100);
	FUNC3(events, "%s", "");

	while ((p = FUNC6(&llist, ",")) != NULL) {
		ret = FUNC2(p, events, group_list);
		if (ret == -EINVAL) {
			FUNC0(stderr, "Cannot find metric or group `%s'\n",
					p);
			break;
		}
	}
	FUNC1(nlist);
	return ret;
}