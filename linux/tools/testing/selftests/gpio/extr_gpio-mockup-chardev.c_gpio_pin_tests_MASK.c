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
struct gpiochip_info {int dummy; } ;

/* Variables and functions */
 int GPIOHANDLE_REQUEST_ACTIVE_LOW ; 
 int GPIOHANDLE_REQUEST_INPUT ; 
 int GPIOHANDLE_REQUEST_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct gpiochip_info*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(struct gpiochip_info *cinfo, unsigned int line)
{
	FUNC1("line<%d>", line);
	FUNC0(cinfo, line, GPIOHANDLE_REQUEST_OUTPUT, 0);
	FUNC1(".");
	FUNC0(cinfo, line, GPIOHANDLE_REQUEST_OUTPUT, 1);
	FUNC1(".");
	FUNC0(cinfo, line,
		      GPIOHANDLE_REQUEST_OUTPUT | GPIOHANDLE_REQUEST_ACTIVE_LOW,
		      0);
	FUNC1(".");
	FUNC0(cinfo, line,
		      GPIOHANDLE_REQUEST_OUTPUT | GPIOHANDLE_REQUEST_ACTIVE_LOW,
		      1);
	FUNC1(".");
	FUNC0(cinfo, line, GPIOHANDLE_REQUEST_INPUT, 0);
	FUNC1(".");
}