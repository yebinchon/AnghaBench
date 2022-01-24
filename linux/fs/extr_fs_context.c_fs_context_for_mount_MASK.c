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
struct file_system_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_CONTEXT_FOR_MOUNT ; 
 struct fs_context* FUNC0 (struct file_system_type*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct fs_context *FUNC1(struct file_system_type *fs_type,
					unsigned int sb_flags)
{
	return FUNC0(fs_type, NULL, sb_flags, 0,
					FS_CONTEXT_FOR_MOUNT);
}