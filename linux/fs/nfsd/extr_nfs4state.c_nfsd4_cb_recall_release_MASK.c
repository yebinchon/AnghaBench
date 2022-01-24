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
struct nfsd4_callback {int dummy; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_stid; } ;

/* Variables and functions */
 struct nfs4_delegation* FUNC0 (struct nfsd4_callback*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfsd4_callback *cb)
{
	struct nfs4_delegation *dp = FUNC0(cb);

	FUNC1(&dp->dl_stid);
}