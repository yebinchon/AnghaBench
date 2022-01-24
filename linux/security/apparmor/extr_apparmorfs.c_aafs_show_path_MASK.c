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
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAFS_NAME ; 
 TYPE_1__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, struct dentry *dentry)
{
	FUNC1(seq, "%s:[%lu]", AAFS_NAME, FUNC0(dentry)->i_ino);
	return 0;
}