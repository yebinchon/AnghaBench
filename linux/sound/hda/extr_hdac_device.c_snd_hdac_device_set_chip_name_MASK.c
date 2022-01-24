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
struct hdac_device {char* chip_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 

int FUNC2(struct hdac_device *codec, const char *name)
{
	char *newname;

	if (!name)
		return 0;
	newname = FUNC1(name, GFP_KERNEL);
	if (!newname)
		return -ENOMEM;
	FUNC0(codec->chip_name);
	codec->chip_name = newname;
	return 0;
}