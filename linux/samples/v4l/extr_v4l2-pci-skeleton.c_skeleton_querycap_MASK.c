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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct skeleton {int /*<<< orphan*/  pdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 char* KBUILD_MODNAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct skeleton* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
			     struct v4l2_capability *cap)
{
	struct skeleton *skel = FUNC3(file);

	FUNC2(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
	FUNC2(cap->card, "V4L2 PCI Skeleton", sizeof(cap->card));
	FUNC1(cap->bus_info, sizeof(cap->bus_info), "PCI:%s",
		 FUNC0(skel->pdev));
	return 0;
}