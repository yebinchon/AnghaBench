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
struct seq_file {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {char* s_fs_info; } ;

/* Variables and functions */
 scalar_t__ append ; 
 char const* root_ino ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, struct dentry *root)
{
	const char *root_path = root->d_sb->s_fs_info;
	size_t offset = FUNC2(root_ino) + 1;

	if (FUNC2(root_path) > offset)
		FUNC1(seq, root_path + offset, NULL);

	if (append)
		FUNC0(seq, ",append");

	return 0;
}