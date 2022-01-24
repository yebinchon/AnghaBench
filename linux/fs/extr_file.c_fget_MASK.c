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

/* Variables and functions */
 int /*<<< orphan*/  FMODE_PATH ; 
 struct file* FUNC0 (unsigned int,int /*<<< orphan*/ ,int) ; 

struct file *FUNC1(unsigned int fd)
{
	return FUNC0(fd, FMODE_PATH, 1);
}