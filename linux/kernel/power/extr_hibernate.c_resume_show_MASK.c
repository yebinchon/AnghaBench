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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  swsusp_resume_device ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct kobj_attribute *attr,
			   char *buf)
{
	return FUNC2(buf,"%d:%d\n", FUNC0(swsusp_resume_device),
		       FUNC1(swsusp_resume_device));
}