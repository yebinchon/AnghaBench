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
struct path {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct kstatfs {int /*<<< orphan*/  f_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct kstatfs*) ; 

int FUNC2(const struct path *path, struct kstatfs *buf)
{
	int error;

	error = FUNC1(path->dentry, buf);
	if (!error)
		buf->f_flags = FUNC0(path->mnt);
	return error;
}