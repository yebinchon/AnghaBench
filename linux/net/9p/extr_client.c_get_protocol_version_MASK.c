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
 int EINVAL ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int p9_proto_2000L ; 
 int p9_proto_2000u ; 
 int p9_proto_legacy ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(char *s)
{
	int version = -EINVAL;

	if (!FUNC2(s, "9p2000")) {
		version = p9_proto_legacy;
		FUNC0(P9_DEBUG_9P, "Protocol version: Legacy\n");
	} else if (!FUNC2(s, "9p2000.u")) {
		version = p9_proto_2000u;
		FUNC0(P9_DEBUG_9P, "Protocol version: 9P2000.u\n");
	} else if (!FUNC2(s, "9p2000.L")) {
		version = p9_proto_2000L;
		FUNC0(P9_DEBUG_9P, "Protocol version: 9P2000.L\n");
	} else
		FUNC1("Unknown protocol version %s\n", s);

	return version;
}