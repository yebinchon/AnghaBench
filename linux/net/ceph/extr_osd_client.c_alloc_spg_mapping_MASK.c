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
struct ceph_spg_mapping {int /*<<< orphan*/  backoffs; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 struct ceph_spg_mapping* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ceph_spg_mapping *FUNC2(void)
{
	struct ceph_spg_mapping *spg;

	spg = FUNC1(sizeof(*spg), GFP_NOIO);
	if (!spg)
		return NULL;

	FUNC0(&spg->node);
	spg->backoffs = RB_ROOT;
	return spg;
}