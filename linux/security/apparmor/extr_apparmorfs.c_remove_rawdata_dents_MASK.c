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
struct aa_loaddata {int /*<<< orphan*/ ** dents; } ;

/* Variables and functions */
 int AAFS_LOADDATA_NDENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct aa_loaddata *rawdata)
{
	int i;

	for (i = 0; i < AAFS_LOADDATA_NDENTS; i++) {
		if (!FUNC0(rawdata->dents[i])) {
			/* no refcounts on i_private */
			FUNC1(rawdata->dents[i]);
			rawdata->dents[i] = NULL;
		}
	}
}