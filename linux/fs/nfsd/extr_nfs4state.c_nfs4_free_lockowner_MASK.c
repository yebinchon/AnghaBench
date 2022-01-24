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
struct nfs4_stateowner {int dummy; } ;
struct nfs4_lockowner {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfs4_lockowner*) ; 
 struct nfs4_lockowner* FUNC1 (struct nfs4_stateowner*) ; 
 int /*<<< orphan*/  lockowner_slab ; 

__attribute__((used)) static void FUNC2(struct nfs4_stateowner *sop)
{
	struct nfs4_lockowner *lo = FUNC1(sop);

	FUNC0(lockowner_slab, lo);
}