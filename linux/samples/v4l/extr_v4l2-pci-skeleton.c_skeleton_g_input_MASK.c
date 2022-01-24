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
struct skeleton {unsigned int input; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct skeleton* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv, unsigned int *i)
{
	struct skeleton *skel = FUNC0(file);

	*i = skel->input;
	return 0;
}