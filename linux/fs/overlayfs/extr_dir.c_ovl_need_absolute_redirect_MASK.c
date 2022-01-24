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
struct dentry {int dummy; } ;
struct TYPE_2__ {int i_nlink; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 

__attribute__((used)) static bool FUNC3(struct dentry *dentry, bool samedir)
{
	struct dentry *lowerdentry;

	if (!samedir)
		return true;

	if (FUNC1(dentry))
		return false;

	/*
	 * For non-dir hardlinked files, we need absolute redirects
	 * in general as two upper hardlinks could be in different
	 * dirs. We could put a relative redirect now and convert
	 * it to absolute redirect later. But when nlink > 1 and
	 * indexing is on, that means relative redirect needs to be
	 * converted to absolute during copy up of another lower
	 * hardllink as well.
	 *
	 * So without optimizing too much, just check if lower is
	 * a hard link or not. If lower is hard link, put absolute
	 * redirect.
	 */
	lowerdentry = FUNC2(dentry);
	return (FUNC0(lowerdentry)->i_nlink > 1);
}