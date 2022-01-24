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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * get_v3_ds_connect ; 
 int /*<<< orphan*/  nfs3_set_ds_client ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(void)
{
	if (!get_v3_ds_connect) {
		get_v3_ds_connect = FUNC1(nfs3_set_ds_client);
		FUNC0(!get_v3_ds_connect);
	}

	return(get_v3_ds_connect != NULL);
}