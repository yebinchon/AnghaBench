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
struct dentry {struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  gssd_dummy_clnt_dir ; 
 int /*<<< orphan*/  gssd_dummy_info_file ; 

__attribute__((used)) static void
FUNC5(struct dentry *pipe_dentry)
{
	struct dentry *clnt_dir = pipe_dentry->d_parent;
	struct dentry *gssd_dir = clnt_dir->d_parent;

	FUNC3(pipe_dentry);
	FUNC1(FUNC2(clnt_dir), pipe_dentry);
	FUNC0(clnt_dir, gssd_dummy_info_file, 0, 1);
	FUNC0(gssd_dir, gssd_dummy_clnt_dir, 0, 1);
	FUNC4(pipe_dentry);
}