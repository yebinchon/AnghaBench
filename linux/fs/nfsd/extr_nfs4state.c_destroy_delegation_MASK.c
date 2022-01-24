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
struct nfs4_delegation {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_delegation*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_lock ; 
 int FUNC3 (struct nfs4_delegation*) ; 

__attribute__((used)) static void FUNC4(struct nfs4_delegation *dp)
{
	bool unhashed;

	FUNC1(&state_lock);
	unhashed = FUNC3(dp);
	FUNC2(&state_lock);
	if (unhashed)
		FUNC0(dp);
}