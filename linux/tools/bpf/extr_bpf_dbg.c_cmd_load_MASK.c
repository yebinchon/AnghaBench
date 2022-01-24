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
 int CMD_ERR ; 
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC9(char *arg)
{
	char *subcmd, *cont = NULL, *tmp = FUNC7(arg);
	int ret = CMD_OK;

	subcmd = FUNC8(tmp, " ", &cont);
	if (subcmd == NULL)
		goto out;
	if (FUNC5(subcmd, "bpf") == 0) {
		FUNC0();
		FUNC1();

		if (!cont)
			ret = CMD_ERR;
		else
			ret = FUNC2(cont);
	} else if (FUNC5(subcmd, "pcap") == 0) {
		ret = FUNC3(cont);
	} else {
out:
		FUNC6("bpf <code>:  load bpf code\n");
		FUNC6("pcap <file>: load pcap file\n");
		ret = CMD_ERR;
	}

	FUNC4(tmp);
	return ret;
}