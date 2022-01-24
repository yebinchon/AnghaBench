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
struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;

/* Variables and functions */
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  R_OK ; 
 size_t FUNC0 (char*,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nsinfo*,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC5 (struct nscookie*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 

__attribute__((used)) static char *FUNC9(const char *sbuild_id,
					struct nsinfo *nsi)
{
	char *realname = NULL;
	char *debugfile;
	struct nscookie nsc;
	size_t len = 0;

	debugfile = FUNC2(1, PATH_MAX);
	if (!debugfile)
		goto out;

	len = FUNC0(debugfile, PATH_MAX,
				   "/usr/lib/debug/.build-id/");
	FUNC7(debugfile + len, PATH_MAX - len, "%.2s/%s.debug", sbuild_id,
		 sbuild_id + 2);

	FUNC4(nsi, &nsc);
	realname = FUNC6(debugfile, NULL);
	if (realname && FUNC1(realname, R_OK))
		FUNC8(&realname);
	FUNC5(&nsc);
out:
	FUNC3(debugfile);
	return realname;
}