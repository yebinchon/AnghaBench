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
struct ubifs_inode {char const* data; int /*<<< orphan*/  data_len; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 char const* FUNC2 (struct inode*,char const*,int /*<<< orphan*/ ,struct delayed_call*) ; 
 struct ubifs_inode* FUNC3 (struct inode*) ; 

__attribute__((used)) static const char *FUNC4(struct dentry *dentry,
					    struct inode *inode,
					    struct delayed_call *done)
{
	struct ubifs_inode *ui = FUNC3(inode);

	if (!FUNC1(inode))
		return ui->data;

	if (!dentry)
		return FUNC0(-ECHILD);

	return FUNC2(inode, ui->data, ui->data_len, done);
}