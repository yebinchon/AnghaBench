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
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* bpf_log_buf ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 

int FUNC5(int argc, char **argv)
{
	FILE *f;
	char filename[256];
	char command[256];
	int ret;

	FUNC4(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC0(filename)) {
		FUNC3("%s", bpf_log_buf);
		return 1;
	}

	FUNC4(command, 256, "mount %s tmpmnt/", argv[1]);
	f = FUNC2(command, "r");
	ret = FUNC1(f);

	return ret ? 0 : 1;
}