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
struct swsusp_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct swsusp_header* swsusp_header ; 

__attribute__((used)) static int FUNC2(void)
{
	swsusp_header = (struct swsusp_header*) FUNC0(GFP_KERNEL);
	if (!swsusp_header)
		FUNC1("Could not allocate memory for swsusp_header\n");
	return 0;
}