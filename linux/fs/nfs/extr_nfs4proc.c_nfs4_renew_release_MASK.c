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
struct nfs_client {int /*<<< orphan*/  cl_count; } ;
struct nfs4_renewdata {struct nfs_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_renewdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *calldata)
{
	struct nfs4_renewdata *data = calldata;
	struct nfs_client *clp = data->client;

	if (FUNC3(&clp->cl_count) > 1)
		FUNC1(clp);
	FUNC2(clp);
	FUNC0(data);
}