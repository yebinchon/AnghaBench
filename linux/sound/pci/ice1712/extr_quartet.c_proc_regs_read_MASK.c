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
struct snd_info_entry {struct snd_ice1712* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_info_entry *entry,
		struct snd_info_buffer *buffer)
{
	struct snd_ice1712 *ice = entry->private_data;
	char bin_buffer[36];

	FUNC4(buffer, "SCR:	%s\n", FUNC0(bin_buffer,
				FUNC3(ice)));
	FUNC4(buffer, "MCR:	%s\n", FUNC0(bin_buffer,
				FUNC2(ice)));
	FUNC4(buffer, "CPLD:	%s\n", FUNC0(bin_buffer,
				FUNC1(ice)));
}