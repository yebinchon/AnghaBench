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
 int MS_PRIVATE ; 
 int MS_REC ; 
 int MS_SHARED ; 
 int MS_SILENT ; 
 int MS_SLAVE ; 
 int MS_UNBINDABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int ms_flags)
{
	int type = ms_flags & ~(MS_REC | MS_SILENT);

	/* Fail if any non-propagation flags are set */
	if (type & ~(MS_SHARED | MS_PRIVATE | MS_SLAVE | MS_UNBINDABLE))
		return 0;
	/* Only one propagation flag should be set */
	if (!FUNC0(type))
		return 0;
	return type;
}