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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct zstd_data *data)
{
	if (data->dstream) {
		FUNC1(data->dstream);
		data->dstream = NULL;
	}

	if (data->cstream) {
		FUNC0(data->cstream);
		data->cstream = NULL;
	}

	return 0;
}