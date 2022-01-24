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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_CMDLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (struct strlist*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct strlist*) ; 
 struct strlist* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct strlist *FUNC11(int fd)
{
	int ret, idx, fddup;
	FILE *fp;
	char buf[MAX_CMDLEN];
	char *p;
	struct strlist *sl;

	if (fd < 0)
		return NULL;

	sl = FUNC10(NULL, NULL);
	if (sl == NULL)
		return NULL;

	fddup = FUNC1(fd);
	if (fddup < 0)
		goto out_free_sl;

	fp = FUNC3(fddup, "r");
	if (!fp)
		goto out_close_fddup;

	while (!FUNC4(fp)) {
		p = FUNC5(buf, MAX_CMDLEN, fp);
		if (!p)
			break;

		idx = FUNC7(p) - 1;
		if (p[idx] == '\n')
			p[idx] = '\0';
		ret = FUNC8(sl, buf);
		if (ret < 0) {
			FUNC6("strlist__add failed (%d)\n", ret);
			goto out_close_fp;
		}
	}
	FUNC2(fp);

	return sl;

out_close_fp:
	FUNC2(fp);
	goto out_free_sl;
out_close_fddup:
	FUNC0(fddup);
out_free_sl:
	FUNC9(sl);
	return NULL;
}