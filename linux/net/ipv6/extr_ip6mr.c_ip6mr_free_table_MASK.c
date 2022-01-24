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
struct mr_table {int /*<<< orphan*/  mfc_hash; int /*<<< orphan*/  ipmr_expire_timer; } ;

/* Variables and functions */
 int MRT6_FLUSH_MFC ; 
 int MRT6_FLUSH_MFC_STATIC ; 
 int MRT6_FLUSH_MIFS ; 
 int MRT6_FLUSH_MIFS_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mr_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct mr_table*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mr_table *mrt)
{
	FUNC0(&mrt->ipmr_expire_timer);
	FUNC2(mrt, MRT6_FLUSH_MIFS | MRT6_FLUSH_MIFS_STATIC |
				 MRT6_FLUSH_MFC | MRT6_FLUSH_MFC_STATIC);
	FUNC3(&mrt->mfc_hash);
	FUNC1(mrt);
}