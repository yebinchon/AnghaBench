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
struct hdac_device {size_t addr; int /*<<< orphan*/  list; struct hdac_bus* bus; } ;
struct hdac_bus {int /*<<< orphan*/  unsol_work; int /*<<< orphan*/  num_codecs; int /*<<< orphan*/  codec_powered; int /*<<< orphan*/ ** caddr_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct hdac_bus *bus,
				struct hdac_device *codec)
{
	FUNC0(bus != codec->bus);
	if (FUNC4(&codec->list))
		return;
	FUNC3(&codec->list);
	bus->caddr_tbl[codec->addr] = NULL;
	FUNC1(codec->addr, &bus->codec_powered);
	bus->num_codecs--;
	FUNC2(&bus->unsol_work);
}