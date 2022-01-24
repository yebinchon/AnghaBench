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
struct fs_context {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_CONTEXT_FOR_RECONFIGURE ; 
 struct fs_context* FUNC0 (int /*<<< orphan*/ ,struct dentry*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

struct fs_context *FUNC1(struct dentry *dentry,
					unsigned int sb_flags,
					unsigned int sb_flags_mask)
{
	return FUNC0(dentry->d_sb->s_type, dentry, sb_flags,
				sb_flags_mask, FS_CONTEXT_FOR_RECONFIGURE);
}