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
struct qstr {unsigned int len; char* name; int /*<<< orphan*/  hash; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_cp_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 unsigned long FUNC4 (struct dentry const*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC6(const struct dentry *dentry, struct qstr *qstr)
{
	unsigned long	 hash;
	int		 i;
	unsigned l = qstr->len;

	if (l == 1) if (qstr->name[0]=='.') goto x;
	if (l == 2) if (qstr->name[0]=='.' || qstr->name[1]=='.') goto x;
	FUNC1(qstr->name, &l);
	/*if (hpfs_chk_name(qstr->name,&l))*/
		/*return -ENAMETOOLONG;*/
		/*return -ENOENT;*/
	x:

	hash = FUNC4(dentry);
	for (i = 0; i < l; i++)
		hash = FUNC5(FUNC3(FUNC2(dentry->d_sb)->sb_cp_table,qstr->name[i]), hash);
	qstr->hash = FUNC0(hash);

	return 0;
}