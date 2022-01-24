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
struct proc_dir_entry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 struct proc_dir_entry* FUNC1 (struct proc_dir_entry*,char const*,unsigned int) ; 
 struct proc_dir_entry proc_root ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static int FUNC3(const char *name, struct proc_dir_entry **ret,
			     const char **residual)
{
	const char     		*cp = name, *next;
	struct proc_dir_entry	*de;
	unsigned int		len;

	de = *ret;
	if (!de)
		de = &proc_root;

	while (1) {
		next = FUNC2(cp, '/');
		if (!next)
			break;

		len = next - cp;
		de = FUNC1(de, cp, len);
		if (!de) {
			FUNC0(1, "name '%s'\n", name);
			return -ENOENT;
		}
		cp += len + 1;
	}
	*residual = cp;
	*ret = de;
	return 0;
}