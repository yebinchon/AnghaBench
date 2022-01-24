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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  to ;
typedef  int /*<<< orphan*/  from ;

/* Variables and functions */
 int PATH_MAX ; 
 int FUNC0 (char*,char const*,scalar_t__*) ; 
 char** ref_reloc_sym_names ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 

__attribute__((used)) static bool FUNC2(const char *from_dir, char *to_dir)
{
	char from[PATH_MAX];
	char to[PATH_MAX];
	const char *name;
	u64 addr1 = 0, addr2 = 0;
	int i, err = -1;

	FUNC1(from, sizeof(from), "%s/kallsyms", from_dir);
	FUNC1(to, sizeof(to), "%s/kallsyms", to_dir);

	for (i = 0; (name = ref_reloc_sym_names[i]) != NULL; i++) {
		err = FUNC0(from, name, &addr1);
		if (!err)
			break;
	}

	if (err)
		return false;

	if (FUNC0(to, name, &addr2))
		return false;

	return addr1 == addr2;
}