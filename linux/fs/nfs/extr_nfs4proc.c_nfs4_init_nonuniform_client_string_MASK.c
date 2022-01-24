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
struct nfs_client {char* cl_owner_id; TYPE_1__* cl_rpcclient; } ;
struct TYPE_2__ {char* cl_nodename; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NFS4_OPAQUE_LIMIT ; 
 int /*<<< orphan*/  RPC_DISPLAY_ADDR ; 
 char* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 char* nfs4_client_id_uniquifier ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*,char*,...) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct nfs_client *clp)
{
	size_t len;
	char *str;

	if (clp->cl_owner_id != NULL)
		return 0;

	FUNC1();
	len = 14 +
		FUNC5(clp->cl_rpcclient->cl_nodename) +
		1 +
		FUNC5(FUNC3(clp->cl_rpcclient, RPC_DISPLAY_ADDR)) +
		1;
	FUNC2();
	if (nfs4_client_id_uniquifier[0] != '\0')
		len += FUNC5(nfs4_client_id_uniquifier) + 1;
	if (len > NFS4_OPAQUE_LIMIT + 1)
		return -EINVAL;

	/*
	 * Since this string is allocated at mount time, and held until the
	 * nfs_client is destroyed, we can use GFP_KERNEL here w/o worrying
	 * about a memory-reclaim deadlock.
	 */
	str = FUNC0(len, GFP_KERNEL);
	if (!str)
		return -ENOMEM;

	FUNC1();
	if (nfs4_client_id_uniquifier[0] != '\0')
		FUNC4(str, len, "Linux NFSv4.0 %s/%s/%s",
			  clp->cl_rpcclient->cl_nodename,
			  nfs4_client_id_uniquifier,
			  FUNC3(clp->cl_rpcclient,
					   RPC_DISPLAY_ADDR));
	else
		FUNC4(str, len, "Linux NFSv4.0 %s/%s",
			  clp->cl_rpcclient->cl_nodename,
			  FUNC3(clp->cl_rpcclient,
					   RPC_DISPLAY_ADDR));
	FUNC2();

	clp->cl_owner_id = str;
	return 0;
}