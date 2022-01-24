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
typedef  size_t u32 ;
struct cpu_topology {size_t core_sib; char** core_siblings; char** die_siblings; size_t die_sib; size_t thread_sib; char** thread_siblings; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_SIB_FMT ; 
 int /*<<< orphan*/  DIE_SIB_FMT ; 
 int /*<<< orphan*/  F_OK ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  THRD_SIB_FMT ; 
 int /*<<< orphan*/  THRD_SIB_FMT_NEW ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct cpu_topology *tp, int cpu)
{
	FILE *fp;
	char filename[MAXPATHLEN];
	char *buf = NULL, *p;
	size_t len = 0;
	ssize_t sret;
	u32 i = 0;
	int ret = -1;

	FUNC5(filename, MAXPATHLEN, CORE_SIB_FMT,
		  FUNC8(), cpu);
	fp = FUNC2(filename, "r");
	if (!fp)
		goto try_dies;

	sret = FUNC4(&buf, &len, fp);
	FUNC1(fp);
	if (sret <= 0)
		goto try_dies;

	p = FUNC6(buf, '\n');
	if (p)
		*p = '\0';

	for (i = 0; i < tp->core_sib; i++) {
		if (!FUNC7(buf, tp->core_siblings[i]))
			break;
	}
	if (i == tp->core_sib) {
		tp->core_siblings[i] = buf;
		tp->core_sib++;
		buf = NULL;
		len = 0;
	}
	ret = 0;

try_dies:
	if (!tp->die_siblings)
		goto try_threads;

	FUNC5(filename, MAXPATHLEN, DIE_SIB_FMT,
		  FUNC8(), cpu);
	fp = FUNC2(filename, "r");
	if (!fp)
		goto try_threads;

	sret = FUNC4(&buf, &len, fp);
	FUNC1(fp);
	if (sret <= 0)
		goto try_threads;

	p = FUNC6(buf, '\n');
	if (p)
		*p = '\0';

	for (i = 0; i < tp->die_sib; i++) {
		if (!FUNC7(buf, tp->die_siblings[i]))
			break;
	}
	if (i == tp->die_sib) {
		tp->die_siblings[i] = buf;
		tp->die_sib++;
		buf = NULL;
		len = 0;
	}
	ret = 0;

try_threads:
	FUNC5(filename, MAXPATHLEN, THRD_SIB_FMT_NEW,
		  FUNC8(), cpu);
	if (FUNC0(filename, F_OK) == -1) {
		FUNC5(filename, MAXPATHLEN, THRD_SIB_FMT,
			  FUNC8(), cpu);
	}
	fp = FUNC2(filename, "r");
	if (!fp)
		goto done;

	if (FUNC4(&buf, &len, fp) <= 0)
		goto done;

	p = FUNC6(buf, '\n');
	if (p)
		*p = '\0';

	for (i = 0; i < tp->thread_sib; i++) {
		if (!FUNC7(buf, tp->thread_siblings[i]))
			break;
	}
	if (i == tp->thread_sib) {
		tp->thread_siblings[i] = buf;
		tp->thread_sib++;
		buf = NULL;
	}
	ret = 0;
done:
	if (fp)
		FUNC1(fp);
	FUNC3(buf);
	return ret;
}