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
struct nfs4_lockowner {int /*<<< orphan*/  lo_owner; } ;
typedef  scalar_t__ fl_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(fl_owner_t owner)
{
	struct nfs4_lockowner *lo = (struct nfs4_lockowner *)owner;

	if (lo)
		FUNC0(&lo->lo_owner);
}