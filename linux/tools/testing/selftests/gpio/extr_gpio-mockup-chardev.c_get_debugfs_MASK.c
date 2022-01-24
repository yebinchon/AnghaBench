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
struct libmnt_table {int dummy; } ;
struct libmnt_iter {int dummy; } ;
struct libmnt_fs {int dummy; } ;
struct libmnt_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  MNT_ITER_FORWARD ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct libmnt_context*,struct libmnt_table**) ; 
 int /*<<< orphan*/  FUNC3 (struct libmnt_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct libmnt_iter*) ; 
 char* FUNC5 (struct libmnt_fs*) ; 
 int /*<<< orphan*/  FUNC6 (struct libmnt_fs*) ; 
 struct libmnt_context* FUNC7 () ; 
 struct libmnt_iter* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct libmnt_table*,struct libmnt_iter*,struct libmnt_fs**) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 

__attribute__((used)) static int FUNC11(char **path)
{
	struct libmnt_context *cxt;
	struct libmnt_table *tb;
	struct libmnt_iter *itr = NULL;
	struct libmnt_fs *fs;
	int found = 0, ret;

	cxt = FUNC7();
	if (!cxt)
		FUNC1(EXIT_FAILURE, "libmount context allocation failed");

	itr = FUNC8(MNT_ITER_FORWARD);
	if (!itr)
		FUNC1(EXIT_FAILURE, "failed to initialize libmount iterator");

	if (FUNC2(cxt, &tb))
		FUNC1(EXIT_FAILURE, "failed to read mtab");

	while (FUNC9(tb, itr, &fs) == 0) {
		const char *type = FUNC5(fs);

		if (!FUNC10(type, "debugfs")) {
			found = 1;
			break;
		}
	}
	if (found) {
		ret = FUNC0(path, "%d/gpio", FUNC6(fs));
		if (ret < 0)
			FUNC1(EXIT_FAILURE, "failed to format string");
	}

	FUNC4(itr);
	FUNC3(cxt);

	if (!found)
		return -1;

	return 0;
}