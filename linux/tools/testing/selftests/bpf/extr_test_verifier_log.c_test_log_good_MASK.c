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
 int /*<<< orphan*/  LOG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,size_t,int) ; 
 scalar_t__ FUNC5 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,size_t) ; 
 scalar_t__ FUNC7 (char*,int) ; 
 size_t FUNC8 (char*,size_t) ; 

__attribute__((used)) static void FUNC9(char *log, size_t buf_len, size_t log_len,
			  size_t exp_len, int exp_errno, const char *full_log)
{
	size_t len;
	int ret;

	FUNC6(log, 1, buf_len);

	ret = FUNC4(log, log_len, 1);
	FUNC1(ret, exp_errno);

	len = FUNC8(log, buf_len);
	if (len == buf_len) {
		FUNC2("verifier did not NULL terminate the log\n");
		FUNC3(1);
	}
	if (exp_len && len != exp_len) {
		FUNC2("incorrect log length expected:%zd have:%zd\n",
		    exp_len, len);
		FUNC3(1);
	}

	if (FUNC7(log, 1)) {
		FUNC2("verifier leaked a byte through\n");
		FUNC3(1);
	}

	FUNC0(log + len + 1, buf_len - len - 1,
		   "verifier wrote bytes past NULL termination\n");

	if (FUNC5(full_log, log, LOG_SIZE)) {
		FUNC2("log did not match expected output\n");
		FUNC3(1);
	}
}