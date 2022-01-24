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
 int FDT_ERR_NOTFOUND ; 
 int FUNC0 (void*,int,char const*,int) ; 
 int FUNC1 (void*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(void *blob, const char *in_path)
{
	const char *path = in_path;
	const char *sep;
	int node, offset = 0;

	/* skip leading '/' */
	while (*path == '/')
		path++;

	for (sep = path; *sep; path = sep + 1, offset = node) {
		/* equivalent to strchrnul(), but it requires _GNU_SOURCE */
		sep = FUNC3(path, '/');
		if (!sep)
			sep = path + FUNC4(path);

		node = FUNC1(blob, offset, path,
				sep - path);
		if (node == -FDT_ERR_NOTFOUND) {
			node = FUNC0(blob, offset, path,
						       sep - path);
		}
		if (node < 0) {
			FUNC2(path, sep - path, node);
			return -1;
		}
	}

	return 0;
}