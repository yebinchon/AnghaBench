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
struct snd_opl4 {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_opl4*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,char) ; 

int FUNC3(struct snd_opl4 *opl4)
{
	char buf[15];

	FUNC1(opl4, buf, 0x001200, 15);
	if (FUNC0(buf, "CopyrightYAMAHA", 15))
		return -ENODEV;
	FUNC1(opl4, buf, 0x1ffffe, 2);
	if (buf[0] != 0x01)
		return -ENODEV;
	FUNC2("YRW801 ROM version %02x.%02x\n", buf[0], buf[1]);
	return 0;
}