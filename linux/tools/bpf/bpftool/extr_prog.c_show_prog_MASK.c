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
struct bpf_prog_info {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int,struct bpf_prog_info*,int*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int fd)
{
	struct bpf_prog_info info = {};
	__u32 len = sizeof(info);
	int err;

	err = FUNC0(fd, &info, &len);
	if (err) {
		FUNC1("can't get prog info: %s", FUNC4(errno));
		return -1;
	}

	if (json_output)
		FUNC2(&info, fd);
	else
		FUNC3(&info, fd);

	return 0;
}