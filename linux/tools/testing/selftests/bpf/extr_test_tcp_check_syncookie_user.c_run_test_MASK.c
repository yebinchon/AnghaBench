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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ USHRT_MAX ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(int server_fd, int results_fd, bool xdp)
{
	int client = -1, srv_client = -1;
	int ret = 0;
	__u32 key = 0;
	__u32 key_gen = 1;
	__u32 key_mss = 2;
	__u32 value = 0;
	__u32 value_gen = 0;
	__u32 value_mss = 0;

	if (FUNC2(results_fd, &key, &value, 0) < 0) {
		FUNC5("Can't clear results");
		goto err;
	}

	if (FUNC2(results_fd, &key_gen, &value_gen, 0) < 0) {
		FUNC5("Can't clear results");
		goto err;
	}

	if (FUNC2(results_fd, &key_mss, &value_mss, 0) < 0) {
		FUNC5("Can't clear results");
		goto err;
	}

	client = FUNC4(server_fd);
	if (client == -1)
		goto err;

	srv_client = FUNC0(server_fd, NULL, 0);
	if (srv_client == -1) {
		FUNC5("Can't accept connection");
		goto err;
	}

	if (FUNC1(results_fd, &key, &value) < 0) {
		FUNC5("Can't lookup result");
		goto err;
	}

	if (value == 0) {
		FUNC5("Didn't match syncookie: %u", value);
		goto err;
	}

	if (FUNC1(results_fd, &key_gen, &value_gen) < 0) {
		FUNC5("Can't lookup result");
		goto err;
	}

	if (xdp && value_gen == 0) {
		// SYN packets do not get passed through generic XDP, skip the
		// rest of the test.
		FUNC6("Skipping XDP cookie check\n");
		goto out;
	}

	if (FUNC1(results_fd, &key_mss, &value_mss) < 0) {
		FUNC5("Can't lookup result");
		goto err;
	}

	if (value != value_gen) {
		FUNC5("BPF generated cookie does not match kernel one");
		goto err;
	}

	if (value_mss < 536 || value_mss > USHRT_MAX) {
		FUNC5("Unexpected MSS retrieved");
		goto err;
	}

	goto out;

err:
	ret = 1;
out:
	FUNC3(client);
	FUNC3(srv_client);
	return ret;
}