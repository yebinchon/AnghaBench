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
struct auth_ops {int /*<<< orphan*/  owner; } ;
typedef  size_t rpc_authflavor_t ;

/* Variables and functions */
 size_t RPC_AUTH_MAXFLAVOR ; 
 int /*<<< orphan*/ * authtab ; 
 struct auth_ops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct auth_ops *
FUNC4(rpc_authflavor_t flavor)
{
	struct auth_ops		*aops;

	if (flavor >= RPC_AUTH_MAXFLAVOR)
		return NULL;
	FUNC1();
	aops = FUNC0(authtab[flavor]);
	if (aops != NULL && !FUNC3(aops->owner))
		aops = NULL;
	FUNC2();
	return aops;
}