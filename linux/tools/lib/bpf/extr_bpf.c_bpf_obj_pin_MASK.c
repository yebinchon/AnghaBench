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
union bpf_attr {int bpf_fd; int /*<<< orphan*/  pathname; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_OBJ_PIN ; 
 int /*<<< orphan*/  FUNC0 (union bpf_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,union bpf_attr*,int) ; 

int FUNC3(int fd, const char *pathname)
{
	union bpf_attr attr;

	FUNC0(&attr, 0, sizeof(attr));
	attr.pathname = FUNC1((void *)pathname);
	attr.bpf_fd = fd;

	return FUNC2(BPF_OBJ_PIN, &attr, sizeof(attr));
}