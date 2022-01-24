#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int btf_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int,...) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 () ; 
 TYPE_1__ xattr ; 

__attribute__((used)) static int FUNC4(void)
{
	int btf_fd, map_fd;

	btf_fd = FUNC3();
	FUNC0(btf_fd == -1, "bpf_load_btf", "btf_fd:%d errno:%d\n",
	      btf_fd, errno);
	xattr.btf_fd = btf_fd;

	map_fd = FUNC1(&xattr);
	xattr.btf_fd = -1;
	FUNC2(btf_fd);
	FUNC0(map_fd == -1,
	      "bpf_create_map_xattr()", "errno:%d\n", errno);

	return map_fd;
}