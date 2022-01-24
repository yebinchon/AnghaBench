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
typedef  size_t ssize_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  bf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 size_t FUNC6 (int,char*,int) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 char* FUNC9 (char*,char) ; 
 size_t FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(pid_t pid, char *comm, size_t len,
				    pid_t *tgid, pid_t *ppid)
{
	char filename[PATH_MAX];
	char bf[4096];
	int fd;
	size_t size = 0;
	ssize_t n;
	char *name, *tgids, *ppids;

	*tgid = -1;
	*ppid = -1;

	FUNC8(filename, sizeof(filename), "/proc/%d/status", pid);

	fd = FUNC3(filename, O_RDONLY);
	if (fd < 0) {
		FUNC4("couldn't open %s\n", filename);
		return -1;
	}

	n = FUNC6(fd, bf, sizeof(bf) - 1);
	FUNC1(fd);
	if (n <= 0) {
		FUNC5("Couldn't get COMM, tigd and ppid for pid %d\n",
			   pid);
		return -1;
	}
	bf[n] = '\0';

	name = FUNC11(bf, "Name:");
	tgids = FUNC11(bf, "Tgid:");
	ppids = FUNC11(bf, "PPid:");

	if (name) {
		char *nl;

		name = FUNC7(name + 5);  /* strlen("Name:") */
		nl = FUNC9(name, '\n');
		if (nl)
			*nl = '\0';

		size = FUNC10(name);
		if (size >= len)
			size = len - 1;
		FUNC2(comm, name, size);
		comm[size] = '\0';
	} else {
		FUNC4("Name: string not found for pid %d\n", pid);
	}

	if (tgids) {
		tgids += 5;  /* strlen("Tgid:") */
		*tgid = FUNC0(tgids);
	} else {
		FUNC4("Tgid: string not found for pid %d\n", pid);
	}

	if (ppids) {
		ppids += 5;  /* strlen("PPid:") */
		*ppid = FUNC0(ppids);
	} else {
		FUNC4("PPid: string not found for pid %d\n", pid);
	}

	return 0;
}