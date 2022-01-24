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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 

loff_t FUNC3(struct file *file_in, loff_t pos_in,
			    struct file *file_out, loff_t pos_out,
			    loff_t len, unsigned int remap_flags)
{
	loff_t ret;

	FUNC2(file_out);
	ret = FUNC0(file_in, pos_in, file_out, pos_out, len,
				  remap_flags);
	FUNC1(file_out);

	return ret;
}