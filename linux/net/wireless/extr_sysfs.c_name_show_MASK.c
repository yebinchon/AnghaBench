#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct wiphy wiphy; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 char* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			 struct device_attribute *attr,
			 char *buf)
{
	struct wiphy *wiphy = &FUNC0(dev)->wiphy;

	return FUNC1(buf, "%s\n", FUNC2(wiphy));
}