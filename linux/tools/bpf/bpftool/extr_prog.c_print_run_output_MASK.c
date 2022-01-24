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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (void*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*,unsigned int) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(void *data, unsigned int size, const char *fname,
		 const char *json_key)
{
	size_t nb_written;
	FILE *f;

	if (!fname)
		return 0;

	if (!FUNC7(fname, "-")) {
		f = stdout;
		if (json_output) {
			FUNC4(json_wtr, json_key);
			FUNC6(data, size);
		} else {
			FUNC3(data, size, f);
		}
		return 0;
	}

	f = FUNC1(fname, "w");
	if (!f) {
		FUNC5("failed to open %s: %s", fname, FUNC8(errno));
		return -1;
	}

	nb_written = FUNC2(data, 1, size, f);
	FUNC0(f);
	if (nb_written != size) {
		FUNC5("failed to write output data/ctx: %s", FUNC8(errno));
		return -1;
	}

	return 0;
}