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
struct hdac_device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct hdac_device*,unsigned int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_device*) ; 
 int FUNC2 (struct hdac_device*) ; 

__attribute__((used)) static int FUNC3(struct hdac_device *codec,
				      unsigned int reg, unsigned int *val,
				      bool uncached)
{
	int err;

	err = FUNC0(codec, reg, val, uncached);
	if (err == -EAGAIN) {
		err = FUNC2(codec);
		if (err >= 0)
			err = FUNC0(codec, reg, val, uncached);
		FUNC1(codec);
	}
	return err;
}