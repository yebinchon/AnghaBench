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
typedef  int /*<<< orphan*/  uint8_t ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  servport ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int KSFT_FAIL ; 
 int KSFT_PASS ; 
 long FUNC0 (char const*,char*,char*) ; 
 long FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int FUNC5 (char const*,char*,int /*<<< orphan*/ *,struct addrinfo**) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,unsigned short) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (long,long,int) ; 

__attribute__((used)) static int FUNC10(const char *cgroup, unsigned short port)
{
	const char server[] = "localhost";
	struct addrinfo *ai;
	char servport[6];
	int retries = 0x10; /* nice round number */
	int sk, ret;

	FUNC7(servport, sizeof(servport), "%hd", port);
	ret = FUNC5(server, servport, NULL, &ai);
	if (ret)
		return ret;

	sk = FUNC8(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
	if (sk < 0)
		goto free_ainfo;

	ret = FUNC3(sk, ai->ai_addr, ai->ai_addrlen);
	if (ret < 0)
		goto close_sk;

	ret = KSFT_FAIL;
	while (retries--) {
		uint8_t buf[0x100000];
		long current, sock;

		if (FUNC6(sk, buf, sizeof(buf)) <= 0)
			goto close_sk;

		current = FUNC1(cgroup, "memory.current");
		sock = FUNC0(cgroup, "memory.stat", "sock ");

		if (current < 0 || sock < 0)
			goto close_sk;

		if (current < sock)
			goto close_sk;

		if (FUNC9(current, sock, 10)) {
			ret = KSFT_PASS;
			break;
		}
	}

close_sk:
	FUNC2(sk);
free_ainfo:
	FUNC4(ai);
	return ret;
}