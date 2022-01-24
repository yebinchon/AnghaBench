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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_TYPE_HASH ; 
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,long long*,long long*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  map_flags ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int max_entries)
{
	int i, fd, ret;
	long long key, value;

	fd = FUNC1(BPF_MAP_TYPE_HASH, sizeof(key), sizeof(value),
			    max_entries, map_flags);
	FUNC0(fd < 0,
	      "failed to create hashmap",
	      "err: %s, flags: 0x%x\n", FUNC3(errno), map_flags);

	for (i = 0; i < max_entries; i++) {
		key = i; value = key;
		ret = FUNC2(fd, &key, &value, BPF_NOEXIST);
		FUNC0(ret != 0,
		      "can't update hashmap",
		      "err: %s\n", FUNC3(ret));
	}

	return fd;
}