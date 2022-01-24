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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int Opt_error ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (int,char*,void**) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(char *options, void **mnt_opts)
{
	char *from = options, *to = options;
	bool first = true;

	while (1) {
		char *next = FUNC6(from, ',');
		int token, len, rc;
		char *arg = NULL;

		if (next)
			len = next - from;
		else
			len = FUNC7(from);

		token = FUNC2(from, len, &arg);
		if (token != Opt_error) {
			arg = FUNC1(arg, from + len - arg, GFP_KERNEL);
			rc = FUNC4(token, arg, mnt_opts);
			if (FUNC8(rc)) {
				FUNC0(arg);
				if (*mnt_opts)
					FUNC5(*mnt_opts);
				*mnt_opts = NULL;
				return rc;
			}
		} else {
			if (!first) {	// copy with preceding comma
				from--;
				len++;
			}
			if (to != from)
				FUNC3(to, from, len);
			to += len;
			first = false;
		}
		if (!from[len])
			break;
		from += len + 1;
	}
	*to = '\0';
	return 0;
}