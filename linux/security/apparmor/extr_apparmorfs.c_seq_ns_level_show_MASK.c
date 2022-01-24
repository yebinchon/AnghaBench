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
struct seq_file {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;

/* Variables and functions */
 struct aa_label* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 TYPE_1__* FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	struct aa_label *label;

	label = FUNC0();
	FUNC3(seq, "%d\n", FUNC2(label)->level);
	FUNC1(label);

	return 0;
}