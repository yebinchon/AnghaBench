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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 scalar_t__ FUNC0 (int,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int map_id)
{
	__u32 key = 0;
	__u32 val;

	if (FUNC0(map_id, &key, &val) != 0) {
		FUNC2(stderr, "map_lookup failed: %s\n", FUNC3(errno));
		return;
	}
	if (val == 0) {
		FUNC2(stderr, "failed: map #%d returns value 0\n", map_id);
		return;
	}
	val = 0;
	if (FUNC1(map_id, &key, &val, BPF_ANY) != 0) {
		FUNC2(stderr, "map_update failed: %s\n", FUNC3(errno));
		return;
	}
}