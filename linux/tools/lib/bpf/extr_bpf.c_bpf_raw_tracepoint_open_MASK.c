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
struct TYPE_2__ {int prog_fd; int /*<<< orphan*/  name; } ;
union bpf_attr {TYPE_1__ raw_tracepoint; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_RAW_TRACEPOINT_OPEN ; 
 int /*<<< orphan*/  FUNC0 (union bpf_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,union bpf_attr*,int) ; 

int FUNC3(const char *name, int prog_fd)
{
	union bpf_attr attr;

	FUNC0(&attr, 0, sizeof(attr));
	attr.raw_tracepoint.name = FUNC1(name);
	attr.raw_tracepoint.prog_fd = prog_fd;

	return FUNC2(BPF_RAW_TRACEPOINT_OPEN, &attr, sizeof(attr));
}