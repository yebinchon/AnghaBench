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
struct TYPE_2__ {int bpf_fd; int /*<<< orphan*/  info_len; int /*<<< orphan*/  info; } ;
union bpf_attr {TYPE_1__ info; } ;
typedef  int /*<<< orphan*/  attr ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_OBJ_GET_INFO_BY_FD ; 
 int /*<<< orphan*/  FUNC0 (union bpf_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,union bpf_attr*,int) ; 

int FUNC3(int prog_fd, void *info, __u32 *info_len)
{
	union bpf_attr attr;
	int err;

	FUNC0(&attr, 0, sizeof(attr));
	attr.info.bpf_fd = prog_fd;
	attr.info.info_len = *info_len;
	attr.info.info = FUNC1(info);

	err = FUNC2(BPF_OBJ_GET_INFO_BY_FD, &attr, sizeof(attr));
	if (!err)
		*info_len = attr.info.info_len;

	return err;
}