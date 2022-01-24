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
struct aa_ext {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int EPROTONOSUPPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct aa_ext*,int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (struct aa_ext*,char const**,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_ext*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  v5 ; 
 int /*<<< orphan*/  v7 ; 

__attribute__((used)) static int FUNC6(struct aa_ext *e, int required, const char **ns)
{
	int error = -EPROTONOSUPPORT;
	const char *name = NULL;
	*ns = NULL;

	/* get the interface version */
	if (!FUNC5(e, &e->version, "version")) {
		if (required) {
			FUNC2(NULL, NULL, NULL, "invalid profile format",
				    e, error);
			return error;
		}
	}

	/* Check that the interface version is currently supported.
	 * if not specified use previous version
	 * Mask off everything that is not kernel abi version
	 */
	if (FUNC1(e->version, v5) || FUNC0(e->version, v7)) {
		FUNC2(NULL, NULL, NULL, "unsupported interface version",
			    e, error);
		return error;
	}

	/* read the namespace if present */
	if (FUNC4(e, &name, "namespace")) {
		if (*name == '\0') {
			FUNC2(NULL, NULL, NULL, "invalid namespace name",
				    e, error);
			return error;
		}
		if (*ns && FUNC3(*ns, name))
			FUNC2(NULL, NULL, NULL, "invalid ns change", e,
				    error);
		else if (!*ns)
			*ns = name;
	}

	return 0;
}