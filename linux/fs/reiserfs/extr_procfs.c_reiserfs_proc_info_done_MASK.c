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
struct super_block {int /*<<< orphan*/  s_id; } ;
struct proc_dir_entry {int dummy; } ;
struct TYPE_2__ {struct proc_dir_entry* procdir; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  proc_info_root ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct super_block *sb)
{
	struct proc_dir_entry *de = FUNC0(sb)->procdir;
	if (de) {
		char b[BDEVNAME_SIZE];
		char *s;

		/* Some block devices use /'s */
		FUNC3(b, sb->s_id, BDEVNAME_SIZE);
		s = FUNC2(b, '/');
		if (s)
			*s = '!';

		FUNC1(b, proc_info_root);
		FUNC0(sb)->procdir = NULL;
	}
	return 0;
}