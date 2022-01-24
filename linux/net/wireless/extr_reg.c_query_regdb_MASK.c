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
struct fwdb_header {struct fwdb_country* country; } ;
struct fwdb_country {int /*<<< orphan*/  alpha2; scalar_t__ coll_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODATA ; 
 scalar_t__ FUNC1 (struct fwdb_header*) ; 
 int FUNC2 (struct fwdb_header*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 struct fwdb_header* regdb ; 
 int FUNC4 (struct fwdb_header*,struct fwdb_country const*) ; 

__attribute__((used)) static int FUNC5(const char *alpha2)
{
	const struct fwdb_header *hdr = regdb;
	const struct fwdb_country *country;

	FUNC0();

	if (FUNC1(regdb))
		return FUNC2(regdb);

	country = &hdr->country[0];
	while (country->coll_ptr) {
		if (FUNC3(alpha2, country->alpha2))
			return FUNC4(regdb, country);
		country++;
	}

	return -ENODATA;
}