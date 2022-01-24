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
struct nfs4_layout_stateid {int dummy; } ;
struct nfs4_layout {int dummy; } ;

/* Variables and functions */
 int DEVID_HASH_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* nfs4_layout_cache ; 
 void* nfs4_layout_stateid_cache ; 
 int /*<<< orphan*/ * nfsd_devid_hash ; 

int
FUNC3(void)
{
	int i;

	for (i = 0; i < DEVID_HASH_SIZE; i++)
		FUNC0(&nfsd_devid_hash[i]);

	nfs4_layout_cache = FUNC1("nfs4_layout",
			sizeof(struct nfs4_layout), 0, 0, NULL);
	if (!nfs4_layout_cache)
		return -ENOMEM;

	nfs4_layout_stateid_cache = FUNC1("nfs4_layout_stateid",
			sizeof(struct nfs4_layout_stateid), 0, 0, NULL);
	if (!nfs4_layout_stateid_cache) {
		FUNC2(nfs4_layout_cache);
		return -ENOMEM;
	}
	return 0;
}