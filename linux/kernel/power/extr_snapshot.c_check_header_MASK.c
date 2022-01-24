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
struct swsusp_info {scalar_t__ num_physpages; } ;

/* Variables and functions */
 int EPERM ; 
 char* FUNC0 (struct swsusp_info*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct swsusp_info *info)
{
	char *reason;

	reason = FUNC0(info);
	if (!reason && info->num_physpages != FUNC1())
		reason = "memory size";
	if (reason) {
		FUNC2("Image mismatch: %s\n", reason);
		return -EPERM;
	}
	return 0;
}