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
 long MAX_IPTNL_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* optarg ; 
 int /*<<< orphan*/  stderr ; 
 long FUNC1 (char*,char**,int) ; 

__attribute__((used)) static int FUNC2(const char *port_str, int *min_port, int *max_port)
{
	char *end;
	long tmp_min_port;
	long tmp_max_port;

	tmp_min_port = FUNC1(optarg, &end, 10);
	if (tmp_min_port < 1 || tmp_min_port > 65535) {
		FUNC0(stderr, "Invalid port(s):%s\n", optarg);
		return 1;
	}

	if (*end == '-') {
		end++;
		tmp_max_port = FUNC1(end, NULL, 10);
		if (tmp_max_port < 1 || tmp_max_port > 65535) {
			FUNC0(stderr, "Invalid port(s):%s\n", optarg);
			return 1;
		}
	} else {
		tmp_max_port = tmp_min_port;
	}

	if (tmp_min_port > tmp_max_port) {
		FUNC0(stderr, "Invalid port(s):%s\n", optarg);
		return 1;
	}

	if (tmp_max_port - tmp_min_port + 1 > MAX_IPTNL_ENTRIES) {
		FUNC0(stderr, "Port range (%s) is larger than %ld\n",
			port_str, MAX_IPTNL_ENTRIES);
		return 1;
	}
	*min_port = tmp_min_port;
	*max_port = tmp_max_port;

	return 0;
}