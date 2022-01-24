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

/* Variables and functions */
 size_t SCARLETT_OFFSET_ADAT ; 
 size_t SCARLETT_OFFSET_ANALOG ; 
 size_t SCARLETT_OFFSET_MIX ; 
 size_t SCARLETT_OFFSET_PCM ; 
 size_t SCARLETT_OFFSET_SPDIF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static void FUNC1(int i, char *dst, int offsets[])
{
	if (i > offsets[SCARLETT_OFFSET_MIX])
		FUNC0(dst, "Mix %c",
			'A'+(i - offsets[SCARLETT_OFFSET_MIX] - 1));
	else if (i > offsets[SCARLETT_OFFSET_ADAT])
		FUNC0(dst, "ADAT %d", i - offsets[SCARLETT_OFFSET_ADAT]);
	else if (i > offsets[SCARLETT_OFFSET_SPDIF])
		FUNC0(dst, "SPDIF %d", i - offsets[SCARLETT_OFFSET_SPDIF]);
	else if (i > offsets[SCARLETT_OFFSET_ANALOG])
		FUNC0(dst, "Analog %d", i - offsets[SCARLETT_OFFSET_ANALOG]);
	else if (i > offsets[SCARLETT_OFFSET_PCM])
		FUNC0(dst, "PCM %d", i - offsets[SCARLETT_OFFSET_PCM]);
	else
		FUNC0(dst, "Off");
}