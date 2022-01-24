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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int Opt_error ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int,char*,void**) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(char *options, void **mnt_opts)
{
	char *from = options;
	char *to = options;
	bool first = true;
	int rc;

	while (1) {
		int len = FUNC4(from);
		int token;
		char *arg = NULL;

		token = FUNC2(from, len, &arg);

		if (token != Opt_error) {
			char *p, *q;

			/* strip quotes */
			if (arg) {
				for (p = q = arg; p < from + len; p++) {
					char c = *p;
					if (c != '"')
						*q++ = c;
				}
				arg = FUNC1(arg, q - arg, GFP_KERNEL);
				if (!arg) {
					rc = -ENOMEM;
					goto free_opt;
				}
			}
			rc = FUNC5(token, arg, mnt_opts);
			if (FUNC7(rc)) {
				FUNC0(arg);
				goto free_opt;
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

free_opt:
	if (*mnt_opts) {
		FUNC6(*mnt_opts);
		*mnt_opts = NULL;
	}
	return rc;
}