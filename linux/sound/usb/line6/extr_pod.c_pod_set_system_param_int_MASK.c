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
typedef  char value ;
struct usb_line6_pod {int /*<<< orphan*/  line6; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  POD_SYSEX_SYSTEM ; 
 size_t SYSEX_DATA_OFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int const) ; 
 char* FUNC2 (struct usb_line6_pod*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int FUNC3(struct usb_line6_pod *pod, int value,
				    int code)
{
	char *sysex;
	static const int size = 5;

	sysex = FUNC2(pod, POD_SYSEX_SYSTEM, size);
	if (!sysex)
		return -ENOMEM;
	sysex[SYSEX_DATA_OFS] = code;
	sysex[SYSEX_DATA_OFS + 1] = (value >> 12) & 0x0f;
	sysex[SYSEX_DATA_OFS + 2] = (value >> 8) & 0x0f;
	sysex[SYSEX_DATA_OFS + 3] = (value >> 4) & 0x0f;
	sysex[SYSEX_DATA_OFS + 4] = (value) & 0x0f;
	FUNC1(&pod->line6, sysex, size);
	FUNC0(sysex);
	return 0;
}