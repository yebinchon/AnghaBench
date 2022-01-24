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
struct pci_dev {int dummy; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 struct fb_info* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct fb_info *info = FUNC1(pdev);

	FUNC2(info);
	FUNC0(info);
}