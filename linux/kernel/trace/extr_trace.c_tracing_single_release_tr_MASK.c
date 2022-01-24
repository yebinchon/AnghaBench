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
struct trace_array {int dummy; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_array*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct trace_array *tr = inode->i_private;

	FUNC1(tr);

	return FUNC0(inode, file);
}