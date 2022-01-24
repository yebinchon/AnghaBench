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
typedef  int u8 ;
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  CMD_PREFIX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, u8 pos)
{
	u8 i;

	for (i = 0; i < sizeof(CMD_PREFIX) - 1; i++)
		FUNC0(m, ' ');
	for (i = 0; i < pos; i++)
		FUNC0(m, ' ');
	FUNC1(m, "^\n");
}