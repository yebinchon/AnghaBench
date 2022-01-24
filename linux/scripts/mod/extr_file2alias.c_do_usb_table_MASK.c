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
struct module {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned long SIZE_usb_device_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long const,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct module*) ; 

__attribute__((used)) static void FUNC2(void *symval, unsigned long size,
			 struct module *mod)
{
	unsigned int i;
	const unsigned long id_size = SIZE_usb_device_id;

	FUNC0(mod->name, "usb", size, id_size, symval);

	/* Leave last one: it's the terminator. */
	size -= id_size;

	for (i = 0; i < size; i += id_size)
		FUNC1(symval + i, mod);
}