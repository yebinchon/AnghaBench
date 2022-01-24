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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_PROG_ARRAY ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(enum bpf_prog_type prog_type, uint32_t max_elem,
			     int p1key)
{
	int p2key = 1;
	int mfd, p1fd, p2fd;

	mfd = FUNC0(BPF_MAP_TYPE_PROG_ARRAY, sizeof(int),
			     sizeof(int), max_elem, 0);
	if (mfd < 0) {
		if (FUNC6(BPF_MAP_TYPE_PROG_ARRAY))
			return -1;
		FUNC5("Failed to create prog array '%s'!\n", FUNC7(errno));
		return -1;
	}

	p1fd = FUNC3(prog_type);
	p2fd = FUNC4(prog_type, mfd, p2key);
	if (p1fd < 0 || p2fd < 0)
		goto out;
	if (FUNC1(mfd, &p1key, &p1fd, BPF_ANY) < 0)
		goto out;
	if (FUNC1(mfd, &p2key, &p2fd, BPF_ANY) < 0)
		goto out;
	FUNC2(p2fd);
	FUNC2(p1fd);

	return mfd;
out:
	FUNC2(p2fd);
	FUNC2(p1fd);
	FUNC2(mfd);
	return -1;
}