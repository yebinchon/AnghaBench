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
struct hdac_device {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (struct hdac_device*,unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct hdac_device *codec, unsigned int reg,
			 unsigned int val)
{
	if (!codec->regmap)
		return FUNC0(codec, reg, val);
	else
		return FUNC1(codec->regmap, reg, val);
}