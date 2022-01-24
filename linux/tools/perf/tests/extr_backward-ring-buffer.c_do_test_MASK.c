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
struct evlist {int dummy; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int STRERR_BUFSIZE ; 
 int TEST_FAIL ; 
 int FUNC0 (struct evlist*,int*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct evlist*) ; 
 int FUNC3 (struct evlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct evlist *evlist, int mmap_pages,
		   int *sample_count, int *comm_count)
{
	int err;
	char sbuf[STRERR_BUFSIZE];

	err = FUNC3(evlist, mmap_pages);
	if (err < 0) {
		FUNC5("evlist__mmap: %s\n",
			 FUNC6(errno, sbuf, sizeof(sbuf)));
		return TEST_FAIL;
	}

	FUNC2(evlist);
	FUNC7();
	FUNC1(evlist);

	err = FUNC0(evlist, sample_count, comm_count);
	FUNC4(evlist);
	return err;
}