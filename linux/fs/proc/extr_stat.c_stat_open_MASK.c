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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int nr_irqs ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  show_stat ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	unsigned int size = 1024 + 128 * FUNC0();

	/* minimum size to display an interrupt count : 2 bytes */
	size += 2 * nr_irqs;
	return FUNC1(file, show_stat, NULL, size);
}