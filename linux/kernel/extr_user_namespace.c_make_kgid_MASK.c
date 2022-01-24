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
struct user_namespace {int /*<<< orphan*/  gid_map; } ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kgid_t FUNC2(struct user_namespace *ns, gid_t gid)
{
	/* Map the gid to a global kernel gid */
	return FUNC0(FUNC1(&ns->gid_map, gid));
}