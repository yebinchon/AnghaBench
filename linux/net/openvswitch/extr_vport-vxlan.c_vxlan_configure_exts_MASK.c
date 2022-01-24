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
struct vxlan_config {int /*<<< orphan*/  flags; } ;
struct vport {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t OVS_VXLAN_EXT_GBP ; 
 int /*<<< orphan*/  OVS_VXLAN_EXT_MAX ; 
 int /*<<< orphan*/  VXLAN_F_GBP ; 
 int /*<<< orphan*/  exts_policy ; 
 int FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct vport *vport, struct nlattr *attr,
				struct vxlan_config *conf)
{
	struct nlattr *exts[OVS_VXLAN_EXT_MAX + 1];
	int err;

	if (FUNC0(attr) < sizeof(struct nlattr))
		return -EINVAL;

	err = FUNC1(exts, OVS_VXLAN_EXT_MAX, attr,
					  exts_policy, NULL);
	if (err < 0)
		return err;

	if (exts[OVS_VXLAN_EXT_GBP])
		conf->flags |= VXLAN_F_GBP;

	return 0;
}