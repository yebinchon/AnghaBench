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
struct path {int dummy; } ;
struct aa_profile {int /*<<< orphan*/  disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_CLASS_MOUNT ; 
 int EACCES ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_profile*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct path*,int /*<<< orphan*/ ,char*,char const**,char const**,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct aa_profile*,struct path const*,char*,char const*,char const*,unsigned long,void*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_profile*,struct path*) ; 

__attribute__((used)) static int FUNC6(struct aa_profile *profile, const struct path *path,
		     char *buffer, struct path *devpath, char *devbuffer,
		     const char *type, unsigned long flags, void *data,
		     bool binary)
{
	const char *devname = NULL, *info = NULL;
	int error = -EACCES;

	FUNC0(!profile);
	FUNC0(devpath && !devbuffer);

	if (!FUNC2(profile, AA_CLASS_MOUNT))
		return 0;

	if (devpath) {
		error = FUNC3(devpath, FUNC5(profile, devpath),
				     devbuffer, &devname, &info,
				     profile->disconnected);
		if (error)
			devname = FUNC1(error);
	}

	return FUNC4(profile, path, buffer, devname, type, flags,
				  data, binary, info);
}