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
struct feat_fd {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (struct feat_fd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct feat_fd *ff, const char *cpuinfo_proc)
{
	FILE *file;
	char *buf = NULL;
	char *s, *p;
	const char *search = cpuinfo_proc;
	size_t len = 0;
	int ret = -1;

	if (!search)
		return -1;

	file = FUNC2("/proc/cpuinfo", "r");
	if (!file)
		return -1;

	while (FUNC4(&buf, &len, file) > 0) {
		ret = FUNC9(buf, search, FUNC8(search));
		if (!ret)
			break;
	}

	if (ret) {
		ret = -1;
		goto done;
	}

	s = buf;

	p = FUNC7(buf, ':');
	if (p && *(p+1) == ' ' && *(p+2))
		s = p + 2;
	p = FUNC7(s, '\n');
	if (p)
		*p = '\0';

	/* squash extra space characters (branding string) */
	p = s;
	while (*p) {
		if (FUNC5(*p)) {
			char *r = p + 1;
			char *q = FUNC6(r);
			*p = ' ';
			if (q != (p+1))
				while ((*r++ = *q++));
		}
		p++;
	}
	ret = FUNC0(ff, s);
done:
	FUNC3(buf);
	FUNC1(file);
	return ret;
}