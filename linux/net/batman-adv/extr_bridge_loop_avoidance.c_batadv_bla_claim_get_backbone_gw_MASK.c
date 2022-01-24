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
struct batadv_bla_claim {int /*<<< orphan*/  backbone_lock; struct batadv_bla_backbone_gw* backbone_gw; } ;
struct batadv_bla_backbone_gw {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct batadv_bla_backbone_gw *
FUNC3(struct batadv_bla_claim *claim)
{
	struct batadv_bla_backbone_gw *backbone_gw;

	FUNC1(&claim->backbone_lock);
	backbone_gw = claim->backbone_gw;
	FUNC0(&backbone_gw->refcount);
	FUNC2(&claim->backbone_lock);

	return backbone_gw;
}