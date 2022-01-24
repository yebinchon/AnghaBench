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
struct user_namespace {int /*<<< orphan*/  projid_map; } ;
typedef  int /*<<< orphan*/  projid_t ;
typedef  int /*<<< orphan*/  kprojid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

projid_t FUNC2(struct user_namespace *targ, kprojid_t kprojid)
{
	/* Map the uid from a global kernel uid */
	return FUNC1(&targ->projid_map, FUNC0(kprojid));
}