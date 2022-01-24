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
struct pair {long long val; int /*<<< orphan*/  ip; } ;
typedef  int __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,struct pair*) ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC2 (char*,int,long long,int /*<<< orphan*/ ) ; 
 long long FUNC3 () ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(int fd)
{
	long long val = FUNC3();
	__u64 key, next_key;
	struct pair v;

	key = FUNC4(1, "\e[1;1H\e[2J", 12); /* clear screen */

	key = -1;
	while (FUNC0(map_fd[0], &key, &next_key) == 0) {
		FUNC1(map_fd[0], &next_key, &v);
		key = next_key;
		if (val - v.val < 1000000000ll)
			/* object was allocated more then 1 sec ago */
			continue;
		FUNC2("obj 0x%llx is %2lldsec old was allocated at ip %llx\n",
		       next_key, (val - v.val) / 1000000000ll, v.ip);
	}
}