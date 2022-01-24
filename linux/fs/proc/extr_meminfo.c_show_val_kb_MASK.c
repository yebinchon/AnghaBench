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

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char const*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, const char *s, unsigned long num)
{
	FUNC0(m, s, num << (PAGE_SHIFT - 10), 8);
	FUNC1(m, " kB\n", 4);
}