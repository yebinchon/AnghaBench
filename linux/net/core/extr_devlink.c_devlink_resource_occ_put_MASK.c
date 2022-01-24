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
struct sk_buff {int dummy; } ;
struct devlink_resource {int /*<<< orphan*/  occ_get_priv; int /*<<< orphan*/  (* occ_get ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_PAD ; 
 int /*<<< orphan*/  DEVLINK_ATTR_RESOURCE_OCC ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct devlink_resource *resource,
				    struct sk_buff *skb)
{
	if (!resource->occ_get)
		return 0;
	return FUNC0(skb, DEVLINK_ATTR_RESOURCE_OCC,
				 resource->occ_get(resource->occ_get_priv),
				 DEVLINK_ATTR_PAD);
}