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
struct super_block {scalar_t__ s_subtype; TYPE_1__* s_type; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, struct super_block *sb)
{
	FUNC0(m, sb->s_type->name);
	if (sb->s_subtype) {
		FUNC1(m, '.');
		FUNC0(m, sb->s_subtype);
	}
}