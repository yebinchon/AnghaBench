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
 int ENOMEM ; 
 int /*<<< orphan*/  fs_kobj ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_client_kobj ; 
 int /*<<< orphan*/ * nfs_client_kset ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	nfs_client_kset = FUNC0("nfs", NULL, fs_kobj);
	if (!nfs_client_kset)
		return -ENOMEM;
	nfs_client_kobj = FUNC2("net", nfs_client_kset, NULL);
	if  (!nfs_client_kobj) {
		FUNC1(nfs_client_kset);
		nfs_client_kset = NULL;
		return -ENOMEM;
	}
	return 0;
}