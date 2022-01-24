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
struct qstr {int /*<<< orphan*/  hash; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct fat_mount_options {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {struct fat_mount_options options; } ;

/* Variables and functions */
 int MSDOS_NAME ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry const*,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,struct fat_mount_options*) ; 

__attribute__((used)) static int FUNC3(const struct dentry *dentry, struct qstr *qstr)
{
	struct fat_mount_options *options = &FUNC0(dentry->d_sb)->options;
	unsigned char msdos_name[MSDOS_NAME];
	int error;

	error = FUNC2(qstr->name, qstr->len, msdos_name, options);
	if (!error)
		qstr->hash = FUNC1(dentry, msdos_name, MSDOS_NAME);
	return 0;
}