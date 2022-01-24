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
typedef  int /*<<< orphan*/  u8 ;
struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;
typedef  int /*<<< orphan*/  build_id ;

/* Variables and functions */
 int BUILD_ID_SIZE ; 
 int SBUILD_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nsinfo*,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC4 (struct nscookie*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int FUNC6(const char *filename, struct nsinfo *nsi)
{
	u8 build_id[BUILD_ID_SIZE];
	char sbuild_id[SBUILD_ID_SIZE];
	struct nscookie nsc;

	int err;

	FUNC3(nsi, &nsc);
	err = FUNC2(filename, &build_id, sizeof(build_id));
	FUNC4(&nsc);
	if (err < 0) {
		FUNC5("Couldn't read a build-id in %s\n", filename);
		return -1;
	}

	FUNC0(build_id, sizeof(build_id), sbuild_id);
	err = FUNC1(sbuild_id);
	FUNC5("Removing %s %s: %s\n", sbuild_id, filename,
		 err ? "FAIL" : "Ok");

	return err;
}