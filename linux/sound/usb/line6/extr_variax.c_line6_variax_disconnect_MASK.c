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
struct usb_line6_variax {int /*<<< orphan*/  buffer_activate; } ;
struct usb_line6 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_line6_variax* FUNC1 (struct usb_line6*) ; 

__attribute__((used)) static void FUNC2(struct usb_line6 *line6)
{
	struct usb_line6_variax *variax = FUNC1(line6);

	FUNC0(variax->buffer_activate);
}