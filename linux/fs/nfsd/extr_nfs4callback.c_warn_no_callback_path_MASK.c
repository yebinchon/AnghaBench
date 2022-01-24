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
struct TYPE_2__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
struct nfs4_client {TYPE_1__ cl_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct nfs4_client *clp, int reason)
{
	FUNC0("NFSD: warning: no callback path to client %.*s: error %d\n",
		(int)clp->cl_name.len, clp->cl_name.data, reason);
}