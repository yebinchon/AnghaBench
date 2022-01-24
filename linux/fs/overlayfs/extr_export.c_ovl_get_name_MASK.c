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
struct dentry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(struct dentry *parent, char *name,
			struct dentry *child)
{
	/*
	 * ovl_fh_to_dentry() returns connected dir overlay dentries and
	 * ovl_fh_to_parent() is not implemented, so we should not get here.
	 */
	FUNC0(1);
	return -EIO;
}