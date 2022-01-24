#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {char* release; char* sysname; int /*<<< orphan*/  machine; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 void* os_build ; 
 char* os_major ; 
 char* os_minor ; 
 char* os_name ; 
 char* os_version ; 
 int /*<<< orphan*/  processor_arch ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__ uts_buf ; 

void FUNC7(void)
{
	FILE	*file;
	char	*p, buf[512];

	FUNC6(&uts_buf);
	os_version = uts_buf.release;
	os_build = FUNC5(uts_buf.release);

	os_name = uts_buf.sysname;
	processor_arch = uts_buf.machine;

	/*
	 * The current windows host (win7) expects the build
	 * string to be of the form: x.y.z
	 * Strip additional information we may have.
	 */
	p = FUNC3(os_version, '-');
	if (p)
		*p = '\0';

	/*
	 * Parse the /etc/os-release file if present:
	 * http://www.freedesktop.org/software/systemd/man/os-release.html
	 */
	file = FUNC2("/etc/os-release", "r");
	if (file != NULL) {
		while (FUNC1(buf, sizeof(buf), file)) {
			char *value, *q;

			/* Ignore comments */
			if (buf[0] == '#')
				continue;

			/* Split into name=value */
			p = FUNC3(buf, '=');
			if (!p)
				continue;
			*p++ = 0;

			/* Remove quotes and newline; un-escape */
			value = p;
			q = p;
			while (*p) {
				if (*p == '\\') {
					++p;
					if (!*p)
						break;
					*q++ = *p++;
				} else if (*p == '\'' || *p == '"' ||
					   *p == '\n') {
					++p;
				} else {
					*q++ = *p++;
				}
			}
			*q = 0;

			if (!FUNC4(buf, "NAME")) {
				p = FUNC5(value);
				if (!p)
					break;
				os_name = p;
			} else if (!FUNC4(buf, "VERSION_ID")) {
				p = FUNC5(value);
				if (!p)
					break;
				os_major = p;
			}
		}
		FUNC0(file);
		return;
	}

	/* Fallback for older RH/SUSE releases */
	file = FUNC2("/etc/SuSE-release", "r");
	if (file != NULL)
		goto kvp_osinfo_found;
	file  = FUNC2("/etc/redhat-release", "r");
	if (file != NULL)
		goto kvp_osinfo_found;

	/*
	 * We don't have information about the os.
	 */
	return;

kvp_osinfo_found:
	/* up to three lines */
	p = FUNC1(buf, sizeof(buf), file);
	if (p) {
		p = FUNC3(buf, '\n');
		if (p)
			*p = '\0';
		p = FUNC5(buf);
		if (!p)
			goto done;
		os_name = p;

		/* second line */
		p = FUNC1(buf, sizeof(buf), file);
		if (p) {
			p = FUNC3(buf, '\n');
			if (p)
				*p = '\0';
			p = FUNC5(buf);
			if (!p)
				goto done;
			os_major = p;

			/* third line */
			p = FUNC1(buf, sizeof(buf), file);
			if (p)  {
				p = FUNC3(buf, '\n');
				if (p)
					*p = '\0';
				p = FUNC5(buf);
				if (p)
					os_minor = p;
			}
		}
	}

done:
	FUNC0(file);
	return;
}