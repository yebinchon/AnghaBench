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
struct tcp_server_args {unsigned short port; int /*<<< orphan*/ * ctl; } ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int EADDRINUSE ; 
 int KSFT_FAIL ; 
 int KSFT_PASS ; 
 int KSFT_SKIP ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,struct tcp_server_args*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC12 (char*,unsigned short) ; 
 int /*<<< orphan*/  tcp_server ; 
 int /*<<< orphan*/  FUNC13 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(const char *root)
{
	int bind_retries = 5, ret = KSFT_FAIL, pid, err;
	unsigned short port;
	char *memcg;

	memcg = FUNC3(root, "memcg_test");
	if (!memcg)
		goto cleanup;

	if (FUNC1(memcg))
		goto cleanup;

	while (bind_retries--) {
		struct tcp_server_args args;

		if (FUNC9(args.ctl))
			goto cleanup;

		port = args.port = 1000 + FUNC10() % 60000;

		pid = FUNC6(memcg, tcp_server, &args);
		if (pid < 0)
			goto cleanup;

		FUNC7(args.ctl[1]);
		if (FUNC11(args.ctl[0], &err, sizeof(err)) != sizeof(err))
			goto cleanup;
		FUNC7(args.ctl[0]);

		if (!err)
			break;
		if (err != EADDRINUSE)
			goto cleanup;

		FUNC13(pid, NULL, 0);
	}

	if (err == EADDRINUSE) {
		ret = KSFT_SKIP;
		goto cleanup;
	}

	if (FUNC12(memcg, port) != KSFT_PASS)
		goto cleanup;

	FUNC13(pid, &err, 0);
	if (FUNC0(err))
		goto cleanup;

	if (FUNC5(memcg, "memory.current") < 0)
		goto cleanup;

	if (FUNC4(memcg, "memory.stat", "sock "))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	FUNC2(memcg);
	FUNC8(memcg);

	return ret;
}