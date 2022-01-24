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
 scalar_t__ PA_HVERSION_ANY_ID ; 
 scalar_t__ PA_HVERSION_REV_ANY_ID ; 
 scalar_t__ PA_HWTYPE_ANY_ID ; 
 scalar_t__ PA_SVERSION_ANY_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ hversion ; 
 scalar_t__ hversion_rev ; 
 scalar_t__ hw_type ; 
 int /*<<< orphan*/  parisc_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ sversion ; 

__attribute__((used)) static int FUNC4(const char *filename, void *symval,
		char *alias)
{
	FUNC1(symval, parisc_device_id, hw_type);
	FUNC1(symval, parisc_device_id, hversion);
	FUNC1(symval, parisc_device_id, hversion_rev);
	FUNC1(symval, parisc_device_id, sversion);

	FUNC3(alias, "parisc:");
	FUNC0(alias, "t", hw_type != PA_HWTYPE_ANY_ID, hw_type);
	FUNC0(alias, "hv", hversion != PA_HVERSION_ANY_ID, hversion);
	FUNC0(alias, "rev", hversion_rev != PA_HVERSION_REV_ANY_ID, hversion_rev);
	FUNC0(alias, "sv", sversion != PA_SVERSION_ANY_ID, sversion);

	FUNC2(alias);
	return 1;
}