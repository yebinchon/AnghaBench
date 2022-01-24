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
struct hdac_device {int /*<<< orphan*/  chip_name; int /*<<< orphan*/  vendor_name; int /*<<< orphan*/  bus; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hdac_device*) ; 

void FUNC3(struct hdac_device *codec)
{
	FUNC1(&codec->dev);
	FUNC2(codec->bus, codec);
	FUNC0(codec->vendor_name);
	FUNC0(codec->chip_name);
}