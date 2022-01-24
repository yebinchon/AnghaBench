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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct qstr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct qstr FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,struct qstr*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*) ; 

struct dentry *FUNC3(const struct super_block *sb,
			       const unsigned char *dir_name)
{
	struct qstr dir = FUNC0(dir_name, FUNC2(dir_name));
	return FUNC1(sb->s_root, &dir);
}