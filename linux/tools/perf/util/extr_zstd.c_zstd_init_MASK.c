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
struct zstd_data {int /*<<< orphan*/ * cstream; int /*<<< orphan*/ * dstream; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(struct zstd_data *data, int level)
{
	size_t ret;

	data->dstream = FUNC1();
	if (data->dstream == NULL) {
		FUNC6("Couldn't create decompression stream.\n");
		return -1;
	}

	ret = FUNC4(data->dstream);
	if (FUNC5(ret)) {
		FUNC6("Failed to initialize decompression stream: %s\n", FUNC2(ret));
		return -1;
	}

	if (!level)
		return 0;

	data->cstream = FUNC0();
	if (data->cstream == NULL) {
		FUNC6("Couldn't create compression stream.\n");
		return -1;
	}

	ret = FUNC3(data->cstream, level);
	if (FUNC5(ret)) {
		FUNC6("Failed to initialize compression stream: %s\n", FUNC2(ret));
		return -1;
	}

	return 0;
}