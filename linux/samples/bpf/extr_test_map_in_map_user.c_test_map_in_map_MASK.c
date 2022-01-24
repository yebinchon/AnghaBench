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
typedef  int uint32_t ;
struct TYPE_2__ {int* s6_addr16; } ;
struct sockaddr_in6 {int sin6_port; TYPE_1__ sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  in6 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  INLINE_RESULT_H ; 
 int NR_TESTS ; 
 int /*<<< orphan*/  REG_RESULT_H ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 () ; 
 char** test_names ; 

__attribute__((used)) static void FUNC8(void)
{
	struct sockaddr_in6 in6 = { .sin6_family = AF_INET6 };
	uint32_t result_key = 0, port_key;
	int result, inline_result;
	int magic_result = 0xfaceb00c;
	int ret;
	int i;

	port_key = FUNC7() & 0x00FF;
	FUNC5(port_key, magic_result);

	in6.sin6_addr.s6_addr16[0] = 0xdead;
	in6.sin6_addr.s6_addr16[1] = 0xbeef;
	in6.sin6_port = port_key;

	for (i = 0; i < NR_TESTS; i++) {
		FUNC6("%s: ", test_names[i]);

		in6.sin6_addr.s6_addr16[7] = i;
		ret = FUNC3(-1, (struct sockaddr *)&in6, sizeof(in6));
		FUNC0(ret == -1 && errno == EBADF);

		ret = FUNC2(REG_RESULT_H, &result_key, &result);
		FUNC0(!ret);

		ret = FUNC2(INLINE_RESULT_H, &result_key,
					  &inline_result);
		FUNC0(!ret);

		if (result != magic_result || inline_result != magic_result) {
			FUNC6("Error. result:%d inline_result:%d\n",
			       result, inline_result);
			FUNC4(1);
		}

		FUNC1(REG_RESULT_H, &result_key);
		FUNC1(INLINE_RESULT_H, &result_key);

		FUNC6("Pass\n");
	}
}