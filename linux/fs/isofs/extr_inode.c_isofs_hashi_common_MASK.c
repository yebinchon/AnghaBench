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
struct qstr {int len; char* name; int /*<<< orphan*/  hash; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (struct dentry const*) ; 
 unsigned long FUNC2 (char,unsigned long) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const struct dentry *dentry, struct qstr *qstr, int ms)
{
	const char *name;
	int len;
	char c;
	unsigned long hash;

	len = qstr->len;
	name = qstr->name;
	if (ms) {
		while (len && name[len-1] == '.')
			len--;
	}

	hash = FUNC1(dentry);
	while (len--) {
		c = FUNC3(*name++);
		hash = FUNC2(c, hash);
	}
	qstr->hash = FUNC0(hash);

	return 0;
}