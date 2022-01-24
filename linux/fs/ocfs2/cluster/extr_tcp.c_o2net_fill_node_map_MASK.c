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
struct o2net_sock_container {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct o2net_sock_container**,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct o2net_sock_container*) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long*) ; 

void FUNC7(unsigned long *map, unsigned bytes)
{
	struct o2net_sock_container *sc;
	int node, ret;

	FUNC1(bytes < (FUNC0(O2NM_MAX_NODES) * sizeof(unsigned long)));

	FUNC2(map, 0, bytes);
	for (node = 0; node < O2NM_MAX_NODES; ++node) {
		if (!FUNC4(FUNC3(node), &sc, &ret))
			continue;
		if (!ret) {
			FUNC6(node, map);
			FUNC5(sc);
		}
	}
}