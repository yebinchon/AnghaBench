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
struct fs_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TMPFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ is_tmpfs ; 
 int FUNC1 (struct fs_context*) ; 
 int FUNC2 (struct fs_context*) ; 

__attribute__((used)) static int FUNC3(struct fs_context *fc)
{
	if (FUNC0(CONFIG_TMPFS) && is_tmpfs)
		return FUNC2(fc);

	return FUNC1(fc);
}