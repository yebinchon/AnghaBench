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
struct ring {int dummy; } ;
typedef  int /*<<< orphan*/  ring ;

/* Variables and functions */
 int KSFT_SKIP ; 
 int TPACKET_V1 ; 
 int /*<<< orphan*/  FUNC0 (int,struct ring*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ring*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct ring*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct ring*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 char** tpacket_str ; 
 char** type_str ; 
 int /*<<< orphan*/  FUNC10 (int,struct ring*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct ring*) ; 

__attribute__((used)) static int FUNC12(int version, int type)
{
	int sock;
	struct ring ring;

	FUNC3(stderr, "test: %s with %s ", tpacket_str[version],
		type_str[type]);
	FUNC2(stderr);

	if (version == TPACKET_V1 &&
	    FUNC8() != FUNC9()) {
		FUNC3(stderr, "test: skip %s %s since user and kernel "
			"space have different bit width\n",
			tpacket_str[version], type_str[type]);
		return KSFT_SKIP;
	}

	sock = FUNC6(version);
	FUNC4(&ring, 0, sizeof(ring));
	FUNC7(sock, &ring, version, type);
	FUNC5(sock, &ring);
	FUNC0(sock, &ring);
	FUNC11(sock, &ring);
	FUNC10(sock, &ring);
	FUNC1(sock);

	FUNC3(stderr, "\n");
	return 0;
}