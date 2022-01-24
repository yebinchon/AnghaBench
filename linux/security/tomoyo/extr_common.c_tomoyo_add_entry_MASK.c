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
struct tomoyo_domain_info {int /*<<< orphan*/  acl_info_list; int /*<<< orphan*/  ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  TOMOYO_STAT_POLICY_UPDATES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC11(struct tomoyo_domain_info *domain, char *header)
{
	char *buffer;
	char *realpath = NULL;
	char *argv0 = NULL;
	char *symlink = NULL;
	char *cp = FUNC3(header, '\n');
	int len;

	if (!cp)
		return;
	cp = FUNC3(cp + 1, '\n');
	if (!cp)
		return;
	*cp++ = '\0';
	len = FUNC4(cp) + 1;
	/* strstr() will return NULL if ordering is wrong. */
	if (*cp == 'f') {
		argv0 = FUNC5(header, " argv[]={ \"");
		if (argv0) {
			argv0 += 10;
			len += FUNC8(argv0) + 14;
		}
		realpath = FUNC5(header, " exec={ realpath=\"");
		if (realpath) {
			realpath += 8;
			len += FUNC8(realpath) + 6;
		}
		symlink = FUNC5(header, " symlink.target=\"");
		if (symlink)
			len += FUNC8(symlink + 1) + 1;
	}
	buffer = FUNC1(len, GFP_NOFS);
	if (!buffer)
		return;
	FUNC2(buffer, len - 1, "%s", cp);
	if (realpath)
		FUNC6(buffer, len, " exec.%s", realpath);
	if (argv0)
		FUNC6(buffer, len, " exec.argv[0]=%s", argv0);
	if (symlink)
		FUNC6(buffer, len, "%s", symlink);
	FUNC7(buffer);
	if (!FUNC10(domain->ns, &domain->acl_info_list, buffer,
				  false))
		FUNC9(TOMOYO_STAT_POLICY_UPDATES);
	FUNC0(buffer);
}