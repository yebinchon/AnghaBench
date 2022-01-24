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
 int FUNC0 (void*,char const*) ; 
 int FUNC1 (void*,int,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 

__attribute__((used)) static int FUNC3(void *blob, const char *node_name,
		const char *property, const char *buf, int len)
{
	int node;
	int err;

	node = FUNC0(blob, node_name);
	if (node < 0) {
		FUNC2(node_name, -1, node);
		return -1;
	}

	err = FUNC1(blob, node, property, buf, len);
	if (err) {
		FUNC2(property, -1, err);
		return -1;
	}
	return 0;
}