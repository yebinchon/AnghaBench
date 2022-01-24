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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,int) ; 
 scalar_t__ FUNC7 (char*,char*,int const) ; 

__attribute__((used)) static void FUNC8(int fd_prog, uint8_t *tag, uint32_t len)
{
	const int prefix_len = sizeof("prog_tag:\t") - 1;
	char buff[256];
	int ret = -1;
	FILE *fp;

	FUNC6(buff, sizeof(buff), "/proc/%d/fdinfo/%d", FUNC4(),
		 fd_prog);
	fp = FUNC3(buff, "r");
	FUNC0(*fp);

	while (FUNC2(buff, sizeof(buff), fp)) {
		if (FUNC7(buff, "prog_tag:\t", prefix_len))
			continue;
		ret = FUNC5(tag, buff + prefix_len, len);
		break;
	}

	FUNC1(fp);
	FUNC0(!ret);
}