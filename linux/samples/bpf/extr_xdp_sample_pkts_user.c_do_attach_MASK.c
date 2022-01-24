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
struct bpf_prog_info {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int,struct bpf_prog_info*,int*) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  prog_id ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdp_flags ; 

__attribute__((used)) static int FUNC4(int idx, int fd, const char *name)
{
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	int err;

	err = FUNC1(idx, fd, xdp_flags);
	if (err < 0) {
		FUNC2("ERROR: failed to attach program to %s\n", name);
		return err;
	}

	err = FUNC0(fd, &info, &info_len);
	if (err) {
		FUNC2("can't get prog info - %s\n", FUNC3(errno));
		return err;
	}
	prog_id = info.id;

	return err;
}