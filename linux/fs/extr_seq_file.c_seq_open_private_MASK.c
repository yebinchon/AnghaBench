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
struct seq_operations {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct file*,struct seq_operations const*,int) ; 

int FUNC1(struct file *filp, const struct seq_operations *ops,
		int psize)
{
	return FUNC0(filp, ops, psize) ? 0 : -ENOMEM;
}