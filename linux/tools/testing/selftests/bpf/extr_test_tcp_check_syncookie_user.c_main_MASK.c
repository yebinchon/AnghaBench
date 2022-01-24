#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr_in {scalar_t__ sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; scalar_t__ sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr6 ;
typedef  int /*<<< orphan*/  addr4 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_loopback ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int,int,int) ; 
 int FUNC10 (struct sockaddr const*,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC11(int argc, char **argv)
{
	struct sockaddr_in addr4;
	struct sockaddr_in6 addr6;
	int server = -1;
	int server_v6 = -1;
	int results = -1;
	int err = 0;
	bool xdp;

	if (argc < 2) {
		FUNC3(stderr, "Usage: %s prog_id\n", argv[0]);
		FUNC2(1);
	}

	results = FUNC4(FUNC0(argv[1]), &xdp);
	if (results < 0) {
		FUNC6("Can't get map");
		goto err;
	}

	FUNC7(&addr4, 0, sizeof(addr4));
	addr4.sin_family = AF_INET;
	addr4.sin_addr.s_addr = FUNC5(INADDR_LOOPBACK);
	addr4.sin_port = 0;

	FUNC7(&addr6, 0, sizeof(addr6));
	addr6.sin6_family = AF_INET6;
	addr6.sin6_addr = in6addr_loopback;
	addr6.sin6_port = 0;

	server = FUNC10((const struct sockaddr *)&addr4, sizeof(addr4));
	if (server == -1)
		goto err;

	server_v6 = FUNC10((const struct sockaddr *)&addr6,
				 sizeof(addr6));
	if (server_v6 == -1)
		goto err;

	if (FUNC9(server, results, xdp))
		goto err;

	if (FUNC9(server_v6, results, xdp))
		goto err;

	FUNC8("ok\n");
	goto out;
err:
	err = 1;
out:
	FUNC1(server);
	FUNC1(server_v6);
	FUNC1(results);
	return err;
}