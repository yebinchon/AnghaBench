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
struct perf_probe_point {char* function; char* offset; char* line; char* file; scalar_t__ retprobe; } ;

/* Variables and functions */
 int FUNC0 (struct strbuf*,char*,char*) ; 
 int FUNC1 (struct strbuf*,char*) ; 
 char* FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 

char *FUNC7(struct perf_probe_point *pp)
{
	struct strbuf buf;
	char *tmp, *ret = NULL;
	int len, err = 0;

	if (FUNC3(&buf, 64) < 0)
		return NULL;

	if (pp->function) {
		if (FUNC1(&buf, pp->function) < 0)
			goto out;
		if (pp->offset)
			err = FUNC0(&buf, "+%lu", pp->offset);
		else if (pp->line)
			err = FUNC0(&buf, ":%d", pp->line);
		else if (pp->retprobe)
			err = FUNC1(&buf, "%return");
		if (err)
			goto out;
	}
	if (pp->file) {
		tmp = pp->file;
		len = FUNC6(tmp);
		if (len > 30) {
			tmp = FUNC5(pp->file + len - 30, '/');
			tmp = tmp ? tmp + 1 : pp->file + len - 30;
		}
		err = FUNC0(&buf, "@%s", tmp);
		if (!err && !pp->function && pp->line)
			err = FUNC0(&buf, ":%d", pp->line);
	}
	if (!err)
		ret = FUNC2(&buf, NULL);
out:
	FUNC4(&buf);
	return ret;
}