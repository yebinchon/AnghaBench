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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct s390_cpumsf {int /*<<< orphan*/ * logdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct stat*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC6(const char *var, const char *value, void *cb)
{
	struct s390_cpumsf *sf = cb;
	struct stat stbuf;
	int rc;

	if (FUNC3(var, "auxtrace.dumpdir"))
		return 0;
	sf->logdir = FUNC4(value);
	if (sf->logdir == NULL) {
		FUNC1("Failed to find auxtrace log directory %s,"
		       " continue with current directory...\n", value);
		return 1;
	}
	rc = FUNC2(sf->logdir, &stbuf);
	if (rc == -1 || !FUNC0(stbuf.st_mode)) {
		FUNC1("Missing auxtrace log directory %s,"
		       " continue with current directory...\n", value);
		FUNC5(&sf->logdir);
	}
	return 1;
}