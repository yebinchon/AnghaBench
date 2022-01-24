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
struct sbitmap {unsigned int depth; unsigned int shift; unsigned int map_nr; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sbitmap*) ; 
 unsigned int FUNC1 (struct sbitmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,unsigned int) ; 

void FUNC3(struct sbitmap *sb, struct seq_file *m)
{
	FUNC2(m, "depth=%u\n", sb->depth);
	FUNC2(m, "busy=%u\n", FUNC1(sb) - FUNC0(sb));
	FUNC2(m, "cleared=%u\n", FUNC0(sb));
	FUNC2(m, "bits_per_word=%u\n", 1U << sb->shift);
	FUNC2(m, "map_nr=%u\n", sb->map_nr);
}