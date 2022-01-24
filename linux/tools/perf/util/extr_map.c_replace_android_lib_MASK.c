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
 size_t PATH_MAX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char*,char const*,...) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static inline bool FUNC5(const char *filename, char *newfilename)
{
	const char *libname;
	char *app_abi;
	size_t app_abi_length, new_length;
	size_t lib_length = 0;

	libname  = FUNC4(filename, '/');
	if (libname)
		lib_length = FUNC2(libname);

	app_abi = FUNC0("APP_ABI");
	if (!app_abi)
		return false;

	app_abi_length = FUNC2(app_abi);

	if (!FUNC3(filename, "/data/app-lib", 13)) {
		char *apk_path;

		if (!app_abi_length)
			return false;

		new_length = 7 + app_abi_length + lib_length;

		apk_path = FUNC0("APK_PATH");
		if (apk_path) {
			new_length += FUNC2(apk_path) + 1;
			if (new_length > PATH_MAX)
				return false;
			FUNC1(newfilename, new_length,
				 "%s/libs/%s/%s", apk_path, app_abi, libname);
		} else {
			if (new_length > PATH_MAX)
				return false;
			FUNC1(newfilename, new_length,
				 "libs/%s/%s", app_abi, libname);
		}
		return true;
	}

	if (!FUNC3(filename, "/system/lib/", 11)) {
		char *ndk, *app;
		const char *arch;
		size_t ndk_length;
		size_t app_length;

		ndk = FUNC0("NDK_ROOT");
		app = FUNC0("APP_PLATFORM");

		if (!(ndk && app))
			return false;

		ndk_length = FUNC2(ndk);
		app_length = FUNC2(app);

		if (!(ndk_length && app_length && app_abi_length))
			return false;

		arch = !FUNC3(app_abi, "arm", 3) ? "arm" :
		       !FUNC3(app_abi, "mips", 4) ? "mips" :
		       !FUNC3(app_abi, "x86", 3) ? "x86" : NULL;

		if (!arch)
			return false;

		new_length = 27 + ndk_length +
			     app_length + lib_length
			   + FUNC2(arch);

		if (new_length > PATH_MAX)
			return false;
		FUNC1(newfilename, new_length,
			"%s/platforms/%s/arch-%s/usr/lib/%s",
			ndk, app, arch, libname);

		return true;
	}
	return false;
}