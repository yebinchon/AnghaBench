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
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *feat_name, const char *plain_name,
		   const char *define_name, bool res, const char *define_prefix)
{
	if (json_output)
		FUNC0(json_wtr, feat_name, res);
	else if (define_prefix)
		FUNC1("#define %s%sHAVE_%s\n", define_prefix,
		       res ? "" : "NO_", define_name);
	else
		FUNC1("%s is %savailable\n", plain_name, res ? "" : "NOT ");
}