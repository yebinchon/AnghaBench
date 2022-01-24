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
struct nlattr {int dummy; } ;

/* Variables and functions */
 size_t IFLA_XDP_ATTACHED ; 
 int /*<<< orphan*/  IFLA_XDP_DRV_PROG_ID ; 
 int /*<<< orphan*/  IFLA_XDP_HW_PROG_ID ; 
 int /*<<< orphan*/  IFLA_XDP_MAX ; 
 int /*<<< orphan*/  IFLA_XDP_PROG_ID ; 
 int /*<<< orphan*/  IFLA_XDP_SKB_PROG_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  NET_END_OBJECT_FINAL ; 
 int /*<<< orphan*/  NET_START_OBJECT ; 
 unsigned char XDP_ATTACHED_DRV ; 
 unsigned char XDP_ATTACHED_HW ; 
 unsigned char XDP_ATTACHED_MULTI ; 
 unsigned char XDP_ATTACHED_NONE ; 
 unsigned char XDP_ATTACHED_SKB ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr**,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC8(struct nlattr *attr, unsigned int ifindex,
			   const char *name)
{
	struct nlattr *tb[IFLA_XDP_MAX + 1];
	unsigned char mode;

	if (FUNC6(tb, IFLA_XDP_MAX, attr, NULL) < 0)
		return -1;

	if (!tb[IFLA_XDP_ATTACHED])
		return 0;

	mode = FUNC5(tb[IFLA_XDP_ATTACHED]);
	if (mode == XDP_ATTACHED_NONE)
		return 0;

	NET_START_OBJECT;
	if (name)
		FUNC0("devname", "%s", name);
	FUNC1("ifindex", "(%d)", ifindex);

	if (mode == XDP_ATTACHED_MULTI) {
		if (json_output) {
			FUNC3(json_wtr, "multi_attachments");
			FUNC4(json_wtr);
		}
		FUNC7(tb, IFLA_XDP_SKB_PROG_ID, "generic", true);
		FUNC7(tb, IFLA_XDP_DRV_PROG_ID, "driver", true);
		FUNC7(tb, IFLA_XDP_HW_PROG_ID, "offload", true);
		if (json_output)
			FUNC2(json_wtr);
	} else if (mode == XDP_ATTACHED_DRV) {
		FUNC7(tb, IFLA_XDP_PROG_ID, "driver", false);
	} else if (mode == XDP_ATTACHED_SKB) {
		FUNC7(tb, IFLA_XDP_PROG_ID, "generic", false);
	} else if (mode == XDP_ATTACHED_HW) {
		FUNC7(tb, IFLA_XDP_PROG_ID, "offload", false);
	}

	NET_END_OBJECT_FINAL;
	return 0;
}