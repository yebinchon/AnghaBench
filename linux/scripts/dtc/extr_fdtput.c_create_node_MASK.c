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

/* Variables and functions */
 int FDT_ERR_BADPATH ; 
 int FUNC0 (void*,int,char*) ; 
 int FUNC1 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static int FUNC4(void *blob, const char *node_name)
{
	int node = 0;
	char *p;

	p = FUNC3(node_name, '/');
	if (!p) {
		FUNC2(node_name, -1, -FDT_ERR_BADPATH);
		return -1;
	}
	*p = '\0';

	if (p > node_name) {
		node = FUNC1(blob, node_name);
		if (node < 0) {
			FUNC2(node_name, -1, node);
			return -1;
		}
	}

	node = FUNC0(blob, node, p + 1);
	if (node < 0) {
		FUNC2(p + 1, -1, node);
		return -1;
	}

	return 0;
}