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
struct miscdevice {int dummy; } ;
struct kmod_test_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct miscdevice* FUNC0 (struct device*) ; 
 struct kmod_test_device* FUNC1 (struct miscdevice*) ; 

__attribute__((used)) static struct kmod_test_device *FUNC2(struct device *dev)
{
	struct miscdevice *misc_dev;

	misc_dev = FUNC0(dev);

	return FUNC1(misc_dev);
}