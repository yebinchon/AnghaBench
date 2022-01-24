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
typedef  int uint32_t ;
struct stats {int uid; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;

/* Variables and functions */
 int UINT32_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,struct stats*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  map_fd ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct stats curEntry;
	uint32_t curN = UINT32_MAX;
	uint32_t nextN;
	int res;

	while (FUNC0(map_fd, &curN, &nextN) > -1) {
		curN = nextN;
		res = FUNC1(map_fd, &curN, &curEntry);
		if (res < 0) {
			FUNC2(1, errno, "fail to get entry value of Key: %u\n",
				curN);
		} else {
			FUNC3("cookie: %u, uid: 0x%x, Packet Count: %lu,"
				" Bytes Count: %lu\n", curN, curEntry.uid,
				curEntry.packets, curEntry.bytes);
		}
	}
}