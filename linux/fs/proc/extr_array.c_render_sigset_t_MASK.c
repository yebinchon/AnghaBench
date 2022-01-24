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
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int _NSIG ; 
 char* hex_asc ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(struct seq_file *m, const char *header,
				sigset_t *set)
{
	int i;

	FUNC1(m, header);

	i = _NSIG;
	do {
		int x = 0;

		i -= 4;
		if (FUNC2(set, i+1)) x |= 1;
		if (FUNC2(set, i+2)) x |= 2;
		if (FUNC2(set, i+3)) x |= 4;
		if (FUNC2(set, i+4)) x |= 8;
		FUNC0(m, hex_asc[x]);
	} while (i >= 4);

	FUNC0(m, '\n');
}