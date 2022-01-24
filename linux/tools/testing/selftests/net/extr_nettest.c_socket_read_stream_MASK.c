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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  interactive ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int,char*,int) ; 
 scalar_t__ server_mode ; 
 scalar_t__ FUNC3 (int,char*,int) ; 

__attribute__((used)) static int FUNC4(int sd)
{
	char buf[1024];
	int len;

	len = FUNC2(sd, buf, sizeof(buf)-1);
	if (len == 0) {
		FUNC1("client closed connection.\n");
		return 0;
	} else if (len < 0) {
		FUNC1("failed to read message\n");
		return -1;
	}

	buf[len] = '\0';
	FUNC1("Incoming message:\n");
	FUNC1("    %.24s%s\n", buf, len > 24 ? " ..." : "");

	if (!interactive && server_mode) {
		if (FUNC3(sd, buf, len) < 0) {
			FUNC0("failed to send buf");
			return -1;
		}
		FUNC1("Sent message:\n");
		FUNC1("     %.24s%s\n", buf, len > 24 ? " ..." : "");
	}

	return 1;
}