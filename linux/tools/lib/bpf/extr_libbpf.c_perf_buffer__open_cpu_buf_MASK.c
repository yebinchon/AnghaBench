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
struct perf_event_attr {int dummy; } ;
struct perf_cpu_buf {int cpu; int map_key; scalar_t__ fd; int /*<<< orphan*/ * base; struct perf_buffer* pb; } ;
struct perf_buffer {scalar_t__ page_size; scalar_t__ mmap_size; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int ENOMEM ; 
 struct perf_cpu_buf* FUNC0 (int) ; 
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_FLAG_FD_CLOEXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  __NR_perf_event_open ; 
 struct perf_cpu_buf* FUNC1 (int,int) ; 
 int errno ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_buffer*,struct perf_cpu_buf*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct perf_event_attr*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct perf_cpu_buf *
FUNC8(struct perf_buffer *pb, struct perf_event_attr *attr,
			  int cpu, int map_key)
{
	struct perf_cpu_buf *cpu_buf;
	char msg[STRERR_BUFSIZE];
	int err;

	cpu_buf = FUNC1(1, sizeof(*cpu_buf));
	if (!cpu_buf)
		return FUNC0(-ENOMEM);

	cpu_buf->pb = pb;
	cpu_buf->cpu = cpu;
	cpu_buf->map_key = map_key;

	cpu_buf->fd = FUNC7(__NR_perf_event_open, attr, -1 /* pid */, cpu,
			      -1, PERF_FLAG_FD_CLOEXEC);
	if (cpu_buf->fd < 0) {
		err = -errno;
		FUNC6("failed to open perf buffer event on cpu #%d: %s\n",
			   cpu, FUNC3(err, msg, sizeof(msg)));
		goto error;
	}

	cpu_buf->base = FUNC4(NULL, pb->mmap_size + pb->page_size,
			     PROT_READ | PROT_WRITE, MAP_SHARED,
			     cpu_buf->fd, 0);
	if (cpu_buf->base == MAP_FAILED) {
		cpu_buf->base = NULL;
		err = -errno;
		FUNC6("failed to mmap perf buffer on cpu #%d: %s\n",
			   cpu, FUNC3(err, msg, sizeof(msg)));
		goto error;
	}

	if (FUNC2(cpu_buf->fd, PERF_EVENT_IOC_ENABLE, 0) < 0) {
		err = -errno;
		FUNC6("failed to enable perf buffer event on cpu #%d: %s\n",
			   cpu, FUNC3(err, msg, sizeof(msg)));
		goto error;
	}

	return cpu_buf;

error:
	FUNC5(pb, cpu_buf);
	return (struct perf_cpu_buf *)FUNC0(err);
}