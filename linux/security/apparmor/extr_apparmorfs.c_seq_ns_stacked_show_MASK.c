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
struct aa_label {int size; } ;

/* Variables and functions */
 struct aa_label* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct aa_label *label;

	label = FUNC0();
	FUNC2(seq, "%s\n", label->size > 1 ? "yes" : "no");
	FUNC1(label);

	return 0;
}