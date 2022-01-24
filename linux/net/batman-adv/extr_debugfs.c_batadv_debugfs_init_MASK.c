#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode; int /*<<< orphan*/  name; } ;
struct batadv_debuginfo {int /*<<< orphan*/  fops; TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DEBUGFS_SUBDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  batadv_debugfs ; 
 struct batadv_debuginfo** batadv_general_debuginfos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	struct batadv_debuginfo **bat_debug;

	batadv_debugfs = FUNC0(BATADV_DEBUGFS_SUBDIR, NULL);

	for (bat_debug = batadv_general_debuginfos; *bat_debug; ++bat_debug)
		FUNC1(((*bat_debug)->attr).name,
				    S_IFREG | ((*bat_debug)->attr).mode,
				    batadv_debugfs, NULL, &(*bat_debug)->fops);
}