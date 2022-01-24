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
struct devlink_port {int dummy; } ;
struct dsa_port {int type; int /*<<< orphan*/ * slave; int /*<<< orphan*/  tag_ops; struct devlink_port devlink_port; } ;

/* Variables and functions */
#define  DSA_PORT_TYPE_CPU 131 
#define  DSA_PORT_TYPE_DSA 130 
#define  DSA_PORT_TYPE_UNUSED 129 
#define  DSA_PORT_TYPE_USER 128 
 int /*<<< orphan*/  FUNC0 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dsa_port *dp)
{
	struct devlink_port *dlp = &dp->devlink_port;

	switch (dp->type) {
	case DSA_PORT_TYPE_UNUSED:
		break;
	case DSA_PORT_TYPE_CPU:
		FUNC1(dp);
		FUNC4(dp->tag_ops);
		FUNC0(dlp);
		FUNC2(dp);
		break;
	case DSA_PORT_TYPE_DSA:
		FUNC1(dp);
		FUNC0(dlp);
		FUNC2(dp);
		break;
	case DSA_PORT_TYPE_USER:
		FUNC0(dlp);
		if (dp->slave) {
			FUNC3(dp->slave);
			dp->slave = NULL;
		}
		break;
	}
}