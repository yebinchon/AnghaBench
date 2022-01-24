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
struct qstr {unsigned int len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct dentry *dentry,
		unsigned int len, const char *str, const struct qstr *name)
{
	unsigned al = len;
	unsigned bl = name->len;

	FUNC0(str, &al);
	/*hpfs_adjust_length(b->name, &bl);*/

	/*
	 * 'str' is the nane of an already existing dentry, so the name
	 * must be valid. 'name' must be validated first.
	 */

	if (FUNC1(name->name, &bl))
		return 1;
	if (FUNC2(dentry->d_sb, str, al, name->name, bl, 0))
		return 1;
	return 0;
}