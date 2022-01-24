#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct machine {int dummy; } ;
struct TYPE_2__ {scalar_t__ fd; int /*<<< orphan*/  file_size; void* status; } ;
struct dso {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 void* DSO_DATA_STATUS_ERROR ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  dso__data_open_lock ; 
 int errno ; 
 scalar_t__ FUNC0 (scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dso*,struct machine*) ; 

__attribute__((used)) static int FUNC6(struct dso *dso, struct machine *machine)
{
	int ret = 0;
	struct stat st;
	char sbuf[STRERR_BUFSIZE];

	FUNC2(&dso__data_open_lock);

	/*
	 * dso->data.fd might be closed if other thread opened another
	 * file (dso) due to open file limit (RLIMIT_NOFILE).
	 */
	FUNC5(dso, machine);

	if (dso->data.fd < 0) {
		ret = -errno;
		dso->data.status = DSO_DATA_STATUS_ERROR;
		goto out;
	}

	if (FUNC0(dso->data.fd, &st) < 0) {
		ret = -errno;
		FUNC1("dso cache fstat failed: %s\n",
		       FUNC4(errno, sbuf, sizeof(sbuf)));
		dso->data.status = DSO_DATA_STATUS_ERROR;
		goto out;
	}
	dso->data.file_size = st.st_size;

out:
	FUNC3(&dso__data_open_lock);
	return ret;
}