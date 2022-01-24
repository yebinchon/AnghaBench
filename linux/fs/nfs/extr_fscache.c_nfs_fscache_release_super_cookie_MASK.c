#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_server {TYPE_1__* fscache_key; int /*<<< orphan*/ * fscache; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 struct nfs_server* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct nfs_server*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  nfs_fscache_keys ; 
 int /*<<< orphan*/  nfs_fscache_keys_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct super_block *sb)
{
	struct nfs_server *nfss = FUNC0(sb);

	FUNC1(FSCACHE, "NFS: releasing superblock cookie (0x%p/0x%p)\n",
		 nfss, nfss->fscache);

	FUNC2(nfss->fscache, NULL, false);
	nfss->fscache = NULL;

	if (nfss->fscache_key) {
		FUNC5(&nfs_fscache_keys_lock);
		FUNC4(&nfss->fscache_key->node, &nfs_fscache_keys);
		FUNC6(&nfs_fscache_keys_lock);
		FUNC3(nfss->fscache_key);
		nfss->fscache_key = NULL;
	}
}