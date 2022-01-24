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
struct debuginfo {scalar_t__ dwfl; int /*<<< orphan*/  dbg; int /*<<< orphan*/  bias; int /*<<< orphan*/  mod; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct debuginfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  offline_callbacks ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct debuginfo *dbg,
					 const char *path)
{
	int fd;

	fd = FUNC8(path, O_RDONLY);
	if (fd < 0)
		return fd;

	dbg->dwfl = FUNC1(&offline_callbacks);
	if (!dbg->dwfl)
		goto error;

	FUNC4(dbg->dwfl);
	dbg->mod = FUNC6(dbg->dwfl, "", "", fd);
	if (!dbg->mod)
		goto error;

	dbg->dbg = FUNC3(dbg->mod, &dbg->bias);
	if (!dbg->dbg)
		goto error;

	FUNC5(dbg->dwfl, NULL, NULL);

	return 0;
error:
	if (dbg->dwfl)
		FUNC2(dbg->dwfl);
	else
		FUNC0(fd);
	FUNC7(dbg, 0, sizeof(*dbg));

	return -ENOENT;
}