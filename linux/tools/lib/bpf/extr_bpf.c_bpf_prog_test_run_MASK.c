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
struct TYPE_2__ {int prog_fd; int repeat; int /*<<< orphan*/  duration; int /*<<< orphan*/  retval; int /*<<< orphan*/  data_size_out; int /*<<< orphan*/  data_size_in; void* data_out; void* data_in; } ;
union bpf_attr {TYPE_1__ test; } ;
typedef  int /*<<< orphan*/  attr ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TEST_RUN ; 
 int /*<<< orphan*/  FUNC0 (union bpf_attr*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,union bpf_attr*,int) ; 

int FUNC3(int prog_fd, int repeat, void *data, __u32 size,
		      void *data_out, __u32 *size_out, __u32 *retval,
		      __u32 *duration)
{
	union bpf_attr attr;
	int ret;

	FUNC0(&attr, 0, sizeof(attr));
	attr.test.prog_fd = prog_fd;
	attr.test.data_in = FUNC1(data);
	attr.test.data_out = FUNC1(data_out);
	attr.test.data_size_in = size;
	attr.test.repeat = repeat;

	ret = FUNC2(BPF_PROG_TEST_RUN, &attr, sizeof(attr));
	if (size_out)
		*size_out = attr.test.data_size_out;
	if (retval)
		*retval = attr.test.retval;
	if (duration)
		*duration = attr.test.duration;
	return ret;
}