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
struct dsa_switch_tree {int /*<<< orphan*/  index; } ;
struct dsa_switch {struct devlink* devlink; struct dsa_switch_tree* dst; } ;
struct devlink_port {int dummy; } ;
struct dsa_port {int type; int /*<<< orphan*/  slave; int /*<<< orphan*/  dn; int /*<<< orphan*/  mac; int /*<<< orphan*/  index; struct devlink_port devlink_port; struct dsa_switch* ds; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_CPU ; 
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_DSA ; 
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_PHYSICAL ; 
#define  DSA_PORT_TYPE_CPU 131 
#define  DSA_PORT_TYPE_DSA 130 
#define  DSA_PORT_TYPE_UNUSED 129 
#define  DSA_PORT_TYPE_USER 128 
 int /*<<< orphan*/  FUNC0 (struct devlink_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char const*,unsigned char const) ; 
 int FUNC1 (struct devlink*,struct devlink_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_port*) ; 
 int FUNC5 (struct dsa_port*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dsa_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct dsa_port*) ; 
 int FUNC8 (struct dsa_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct devlink_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dsa_port *dp)
{
	struct dsa_switch *ds = dp->ds;
	struct dsa_switch_tree *dst = ds->dst;
	const unsigned char *id = (const unsigned char *)&dst->index;
	const unsigned char len = sizeof(dst->index);
	struct devlink_port *dlp = &dp->devlink_port;
	bool dsa_port_link_registered = false;
	bool devlink_port_registered = false;
	struct devlink *dl = ds->devlink;
	bool dsa_port_enabled = false;
	int err = 0;

	switch (dp->type) {
	case DSA_PORT_TYPE_UNUSED:
		FUNC4(dp);
		break;
	case DSA_PORT_TYPE_CPU:
		FUNC9(dlp, 0, sizeof(*dlp));
		FUNC0(dlp, DEVLINK_PORT_FLAVOUR_CPU,
				       dp->index, false, 0, id, len);
		err = FUNC1(dl, dlp, dp->index);
		if (err)
			break;
		devlink_port_registered = true;

		err = FUNC6(dp);
		if (err)
			break;
		dsa_port_link_registered = true;

		err = FUNC5(dp, NULL);
		if (err)
			break;
		dsa_port_enabled = true;

		break;
	case DSA_PORT_TYPE_DSA:
		FUNC9(dlp, 0, sizeof(*dlp));
		FUNC0(dlp, DEVLINK_PORT_FLAVOUR_DSA,
				       dp->index, false, 0, id, len);
		err = FUNC1(dl, dlp, dp->index);
		if (err)
			break;
		devlink_port_registered = true;

		err = FUNC6(dp);
		if (err)
			break;
		dsa_port_link_registered = true;

		err = FUNC5(dp, NULL);
		if (err)
			break;
		dsa_port_enabled = true;

		break;
	case DSA_PORT_TYPE_USER:
		FUNC9(dlp, 0, sizeof(*dlp));
		FUNC0(dlp, DEVLINK_PORT_FLAVOUR_PHYSICAL,
				       dp->index, false, 0, id, len);
		err = FUNC1(dl, dlp, dp->index);
		if (err)
			break;
		devlink_port_registered = true;

		dp->mac = FUNC10(dp->dn);
		err = FUNC8(dp);
		if (err)
			break;

		FUNC2(dlp, dp->slave);
		break;
	}

	if (err && dsa_port_enabled)
		FUNC4(dp);
	if (err && dsa_port_link_registered)
		FUNC7(dp);
	if (err && devlink_port_registered)
		FUNC3(dlp);

	return err;
}