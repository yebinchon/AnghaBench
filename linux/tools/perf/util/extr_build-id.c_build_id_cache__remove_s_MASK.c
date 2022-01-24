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
 int /*<<< orphan*/  F_OK ; 
 size_t PATH_MAX ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,size_t const) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (size_t const) ; 

int FUNC9(const char *sbuild_id)
{
	const size_t size = PATH_MAX;
	char *filename = FUNC8(size),
	     *linkname = FUNC8(size), *tmp;
	int err = -1;

	if (filename == NULL || linkname == NULL)
		goto out_free;

	if (!FUNC1(sbuild_id, linkname, size))
		goto out_free;

	if (FUNC0(linkname, F_OK))
		goto out_free;

	if (FUNC3(linkname, filename, size - 1) < 0)
		goto out_free;

	if (FUNC7(linkname))
		goto out_free;

	/*
	 * Since the link is relative, we must make it absolute:
	 */
	tmp = FUNC6(linkname, '/') + 1;
	FUNC5(tmp, size - (tmp - linkname), "%s", filename);

	if (FUNC4(linkname))
		goto out_free;

	err = 0;
out_free:
	FUNC2(filename);
	FUNC2(linkname);
	return err;
}