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
struct mdpy_type {int width; int height; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct mdpy_type* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t
FUNC2(struct kobject *kobj, struct device *dev, char *buf)
{
	const struct mdpy_type *type = FUNC0(kobj);

	return FUNC1(buf, "virtual display, %dx%d framebuffer\n",
		       type ? type->width  : 0,
		       type ? type->height : 0);
}