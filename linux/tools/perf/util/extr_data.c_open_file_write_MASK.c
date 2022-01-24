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
struct TYPE_2__ {int /*<<< orphan*/  path; } ;
struct perf_data {TYPE_1__ file; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int STRERR_BUFSIZE ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct perf_data *data)
{
	int fd;
	char sbuf[STRERR_BUFSIZE];

	fd = FUNC0(data->file.path, O_CREAT|O_RDWR|O_TRUNC|O_CLOEXEC,
		  S_IRUSR|S_IWUSR);

	if (fd < 0)
		FUNC1("failed to open %s : %s\n", data->file.path,
			FUNC2(errno, sbuf, sizeof(sbuf)));

	return fd;
}