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
 int /*<<< orphan*/  saved_command_line ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	FUNC1(m, saved_command_line);
	FUNC0(m, '\n');
	return 0;
}