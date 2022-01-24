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
 int /*<<< orphan*/  FUNC0 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,void*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	FUNC2(seq, v);

	FUNC0(seq);	/* RFC 2011 compatibility */
	FUNC1(seq);

	FUNC3(seq, v);

	return 0;
}