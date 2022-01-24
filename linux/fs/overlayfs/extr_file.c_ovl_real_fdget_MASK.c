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
struct fd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file const*,struct fd*,int) ; 

__attribute__((used)) static int FUNC1(const struct file *file, struct fd *real)
{
	return FUNC0(file, real, false);
}