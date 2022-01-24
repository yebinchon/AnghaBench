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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ api_version ; 
 int /*<<< orphan*/  hda_device_id ; 
 scalar_t__ rev_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ vendor_id ; 

__attribute__((used)) static int FUNC4(const char *filename, void *symval, char *alias)
{
	FUNC1(symval, hda_device_id, vendor_id);
	FUNC1(symval, hda_device_id, rev_id);
	FUNC1(symval, hda_device_id, api_version);

	FUNC3(alias, "hdaudio:");
	FUNC0(alias, "v", vendor_id != 0, vendor_id);
	FUNC0(alias, "r", rev_id != 0, rev_id);
	FUNC0(alias, "a", api_version != 0, api_version);

	FUNC2(alias);
	return 1;
}