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
typedef  unsigned long loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long nr_cpu_ids ; 

__attribute__((used)) static void *FUNC2(struct seq_file *file, loff_t *offset)
{
	unsigned long n = *offset;

	if (n == 0)
		return (void *) 1;

	n--;

	if (n > 0)
		n = FUNC1(n - 1, cpu_online_mask);
	else
		n = FUNC0(cpu_online_mask);

	*offset = n + 1;

	if (n < nr_cpu_ids)
		return (void *)(unsigned long)(n + 2);

	return NULL;
}