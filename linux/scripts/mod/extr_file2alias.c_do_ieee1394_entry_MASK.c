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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int IEEE1394_MATCH_MODEL_ID ; 
 int IEEE1394_MATCH_SPECIFIER_ID ; 
 int IEEE1394_MATCH_VENDOR_ID ; 
 int IEEE1394_MATCH_VERSION ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ieee1394_device_id ; 
 int match_flags ; 
 int model_id ; 
 int specifier_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int vendor_id ; 
 int version ; 

__attribute__((used)) static int FUNC4(const char *filename,
			     void *symval, char *alias)
{
	FUNC1(symval, ieee1394_device_id, match_flags);
	FUNC1(symval, ieee1394_device_id, vendor_id);
	FUNC1(symval, ieee1394_device_id, model_id);
	FUNC1(symval, ieee1394_device_id, specifier_id);
	FUNC1(symval, ieee1394_device_id, version);

	FUNC3(alias, "ieee1394:");
	FUNC0(alias, "ven", match_flags & IEEE1394_MATCH_VENDOR_ID,
	    vendor_id);
	FUNC0(alias, "mo", match_flags & IEEE1394_MATCH_MODEL_ID,
	    model_id);
	FUNC0(alias, "sp", match_flags & IEEE1394_MATCH_SPECIFIER_ID,
	    specifier_id);
	FUNC0(alias, "ver", match_flags & IEEE1394_MATCH_VERSION,
	    version);

	FUNC2(alias);
	return 1;
}