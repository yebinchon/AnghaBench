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
struct dso {int /*<<< orphan*/  build_id; int /*<<< orphan*/  has_build_id; } ;

/* Variables and functions */
 int SBUILD_ID_SIZE ; 
 int FUNC0 (char**,size_t,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dso*) ; 
 int FUNC5 (struct dso*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 

char *FUNC8(const struct dso *dso, char *bf, size_t size,
			     bool is_debug)
{
	bool is_kallsyms = FUNC4((struct dso *)dso);
	bool is_vdso = FUNC5((struct dso *)dso);
	char sbuild_id[SBUILD_ID_SIZE];
	char *linkname;
	bool alloc = (bf == NULL);
	int ret;

	if (!dso->has_build_id)
		return NULL;

	FUNC1(dso->build_id, sizeof(dso->build_id), sbuild_id);
	linkname = FUNC3(sbuild_id, NULL, 0);
	if (!linkname)
		return NULL;

	/* Check if old style build_id cache */
	if (FUNC7(linkname))
		ret = FUNC0(&bf, size, "%s", linkname);
	else
		ret = FUNC0(&bf, size, "%s/%s", linkname,
			 FUNC2(is_kallsyms, is_vdso,
						  is_debug));
	if (ret < 0 || (!alloc && size < (unsigned int)ret))
		bf = NULL;
	FUNC6(linkname);

	return bf;
}